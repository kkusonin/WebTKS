#!/usr/bin/perl
use strict;
use warnings;
use FindBin qw($Bin);
use lib "$Bin/../lib";
use Config::General;
use Excel::Template;
use TKS::Schema;
use Data::Dumper;
use DateTime::Format::MySQL;

my %conf = Config::General->new("$Bin/../webtks.conf")
                          ->getall;

sub report_row {
	{
		entry_date => (defined $_[0]->entry_time) ? $_[0]->entry_time->strftime("%Y-%m-%d") : '',
		entry_time => (defined $_[0]->entry_time) ? $_[0]->entry_time->strftime("%H:%M:%S") : '',
		phone_number => $_[0]->phone_number,
		user => $_[0]->user,
		full_name => $_[0]->full_name,
		lead_id => $_[0]->lead_id,
		status => $_[0]->status,
		update_date => (defined $_[0]->update_time) ? $_[0]->update_time->strftime("%Y-%m-%d") : '',
		update_time => (defined $_[0]->update_time) ? $_[0]->update_time->strftime("%H:%M:%S") : '',
	}
}

my $schema = TKS::Schema->connect($conf{'Model'}->{'DB::TKS'}->{connect_info});	

my $start = DateTime::Format::MySQL->parse_datetime('2013-12-25 13:45:26');
my $end =  DateTime::Format::MySQL->parse_datetime('2014-04-10 13:06:56');

my @result = map { report_row($_) } $schema->resultset('Order')->entry_interval($start, $end);	

my $template_file = "$Bin/../root/reports/report.xml";
my $excel_file = 'report.xls';
my $template = Excel::Template->new( filename => $template_file );
$template->param( report_data => \@result);
$template->write_file($excel_file);			  
