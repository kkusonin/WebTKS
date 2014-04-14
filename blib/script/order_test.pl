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

my $order = $schema->resultset('Order')->search_by_lead(9197334);

print $order->birthdate,"\n" if $order;