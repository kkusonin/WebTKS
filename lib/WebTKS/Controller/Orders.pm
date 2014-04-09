package WebTKS::Controller::Orders;
use Moose;
use WebTKS::Form::Order;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

WebTKS::Controller::Orders - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

# We use the error action to handle errors
sub error :Private {
  my ( $self, $c, $code, $reason ) = @_;
	$reason	||= 'Unknown Error';
	$code	||= 500;
 
	$c->res->status($code);
	$c->stash(
		data		=> { 
			code		  => $code,
			error_message => $reason 
		},
		template	=> 'orders/error.tt',
	);
}

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched WebTKS::Controller::Orders in Orders.');
}

sub orders : Chained('/') PathPart('orders') CaptureArgs(0) {
	my ($self, $c) = @_;
	$c->stash(
		orders => $c->model('DB::TKS::Order'),
		leads  => $c->model('DB::Vicidial::VicidialLead'),
		users  => $c->model('DB::Vicidial::VicidialUser'),
	);
}

sub add : GET Chained('orders') PathPart('create') Args(0) {
	my ($self, $c ) = @_;
	
	my $args = $c->req->query_params;
	
	$c->detach('error', [ 404, "Не указан обязательный аргумент: lead_id:" ]) if ! defined $args->{lead_id};
	$c->detach('error', [ 404, "Не указан обязательный аргумент: user" ]) if ! defined $args->{user};
	
	my $lead = $c->stash->{leads}->find($args->{lead_id});
	my $user = $c->stash->{users}->single({user => $args->{user}});
	
	$c->detach('error', [ 404, "Несуществующий Lead ID:" . $args->{lead_id} ]) if ! $lead;
	$c->detach('error', [ 404, "Несуществующий оператор:" . $args->{user} ]) if ! $user;
		
	$c->stash(
		data => {
			%$args,
			utm_content	 => $lead->country_code,
			phone_number => $lead->phone_number,
			full_name	 => $user->full_name,
		},
		template => 'orders/create.tt',
	);
}

sub create : POST Chained('orders') PathPart('create') Args(0) {
	my ( $self, $c ) = @_;
	my $order_details = $c->req->body_params;
	
	
	$c->detach('error',[500, "Неправильная фамилия: " . $order_details->{surname}]);
	delete $order_details->{submit};
	$c->res->redirect($c->uri_for(($c->controller->action_for('add'),$order_details)));
	
	return;
} 

=encoding utf8

=head1 AUTHOR

A clever guy

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
