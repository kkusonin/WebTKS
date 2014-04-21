#!/usr/bin/perl
use strict;
use warnings;
use FindBin qw($Bin);
use lib "$Bin/../lib";
use Config::General;
use Const::Fast;
use Data::Dumper;
use DateTime;
use TKS::Schema;
use TKS::API::Tracker;
use Vicidial::Schema;

const my $DEFAULT_FROM => '1356984000';

my %conf = Config::General->new("$Bin/../webtks.conf")
                          ->getall;
						  
my $key = $conf{Model}->{ApiTracker}->{args}->{key};

my $schema = TKS::Schema->connect($conf{'Model'}->{'DB::TKS'}->{connect_info});

my $events = $schema->resultset('Event');

my $last_event_time = $events->last_event_time;
my $date_from = ($last_event_time) ? $last_event_time->epoch + 1: $DEFAULT_FROM;

my $date_to = DateTime->now(time_zone => 'local')->epoch;

my $tracker = TKS::API::Tracker->new(key => $key);

my $items = $tracker->get_lead_statuses(
	date_from => $date_from,
	date_to => $date_to
);

if (@$items>= 1 && ref $items->[0]) {
	foreach (@$items) {
		$events->create({
			uuid => $_->{uuid},
			user => $_->{wm},
			date => $_->{date},
			status => $_->{status},
		});
	};
	print STDERR "GetLeadStatuses: ", scalar @$items, " new events received\n";
}
else {
	print STDERR "GetLeadStatuses: no new events received\n";
}



