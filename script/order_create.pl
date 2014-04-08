#!/usr/bin/perl
use strict;
use utf8;
binmode STDOUT, ":encoding(cp866)";
use lib 'lib';
use DBIx::Class::Schema;
use TKS::Order;
use Try::Tiny;
use Data::Dumper;

my $schema = DBIx::Class::Schema->connect(
	'DBI:mysql:tks',
	'tks',
	'12345',
	{ 
		AutoCommit => 1,
		RaiseError => 1,
		mysql_enable_utf8 => 1,
	}
);

try {
	my $order = TKS::Order->new(
		schema => $schema,
		name => 'Иван',
		surname => 'Иванов',
		lead_id => 923456,
	);
}
catch {
    print $_, "\n";
	my ($err) = $_ =~ /because:\s+(.*?)\s+at/;
	print "Запрос не создан: $err\n";
}