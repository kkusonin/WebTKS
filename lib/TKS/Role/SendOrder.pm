package TKS::Role::SendOrder;
use Modern::Perl;
use Moose::Role;
use TKS::API::AppSender;
use namespace::autoclean;
use Carp;

requires qw(
    surname 
    name 
    patronymic 
    birthdate 
    phone_mobile 
    phone_home 
    wm 
    client_declared_credit_history
    utm_content
);

sub app_data {
	my $self = shift;
	
	return {
		surname						   => $self->surname,
		name						   => $self->name,
		patronymic  				   => $self->patronymic,
		birthdate                      => join('', split('/', $self->birthdate)),
		phone_mobile				   => $self->phone_mobile,
		phone_home                     => $self->phone_home,
		wm                             => $self->wm,
		client_declared_credit_history => $self->client_declared_credit_history,
		utm_content					   => $self->utm_content,
	}
}

sub send_order {
	my ($self, $sender) = @_;
	bless $sender, 'TKS::API::AppSender';
	my $result = $sender->send($self->app_data);
	  
	return $result->{id};
}

1;