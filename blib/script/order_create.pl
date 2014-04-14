#!/usr/bin/perl
use strict;
use utf8;
binmode STDOUT, ":encoding(cp866)";
use lib 'lib';
use TKS::Schema;
use Try::Tiny;
use Data::Dumper;

my $schema = TKS::Schema->connect(
	'DBI:mysql:tks',
	'tks',
	'12345',
	{ 
		AutoCommit => 1,
		RaiseError => 1,
		mysql_enable_utf8 => 1,
	}
);

sub birthday {
	int(rand(28) + 1) . '/' . int(rand(12) + 1) . '/' . int(rand(44) + 1970);
}

sub history {
	int(rand(4)) + 1;
}

my $lead_id = 9197341;
#try {
		my $order = $schema->resultset('Order')->create({
			name => 'Иван',
			surname => "Иванов",
			patronymic => undef,
			birthdate => '13/02/1990',
			phone_mobile => 89219345678,
			phone_home => 88123322322,
			client_declared_credit_history => history(),
			lead_id => $lead_id,
			user => 3064,
		});
		
		#$order->list_init_args;
		#print localtime, "\n";
		#print "Sending Application\n";
		#$order->uuid($order->send_order(1));
		#$order->update;
#	}
#	catch {
#		print $_, "\n";
#	}
