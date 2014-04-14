package TKS::API::AppSender::Result;
use Moose;
use namespace::autoclean;

has 'resultCode' => (
	is => 'ro',
	isa => 'Str',
	required => 1,
);

has 'errorMessage' => (
	is => 'ro',
	isa => 'Str',
	predicate => 'is_error',
);

has 'payload' => (
	is => 'ro',
	isa => 'HashRef',
	handles => {
		id => sub { $_[0]->payload->{id} },
	},
);

has 'trackingId' => (
	is => 'ro',
	isa => 'Str',
);

sub is_success {
	!$_[0]->is_error;
}

__PACKAGE__->meta->make_immutable;

1;