package TKS::Schema::ResultSet::Order;
use strict;
use warnings;
use base 'DBIx::Class::ResultSet';

sub search_by_lead {
	$_[0]->single({lead_id => $_[1] });
}

1;