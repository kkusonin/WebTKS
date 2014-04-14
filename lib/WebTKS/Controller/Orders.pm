package WebTKS::Controller::Orders;
use utf8;
use Moose;
use WebTKS::Form::Order;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }
use WebTKS::Form::Order;

#has 'edit_form' => ( 
#	isa => 'WebTKS::Form::Order', 
#	is => 'rw',
#   lazy => 1, 
#	default => sub { WebTKS::Form::Order->new } 
#);
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

sub index : Chained('order_base') PathPart('') Args(0) {
	my ($self, $c) = @_;
	
	$c->load_status_msgs;
	
	$c->stash(
		action   => $c->uri_for($c->controller->action_for('create')),
		template => 'orders/index.tt',
	);
}

sub show : Chained('order_base') PathPart('') Args(1) {
	my ( $self, $c, $order_id ) = @_;
	
	$c->load_status_msgs;
	
	$c->stash(
		template => 'orders/show.tt',
		order => $c->model('DB::TKS::Order')->find($order_id),
	);
}

sub form_hidden_fields {
	my ($params) = @_;
	
	my $lead_id = $params->{lead_id};
	my $user = $params->{user};
	
	return {
		lead_id => { default => $lead_id, element_attr => ($lead_id) ? { readonly => 1} : {}},
		user => { default => $user, element_attr => ($user) ? { readonly => 1} : {} },
	}
}

sub order_base : Chained('/') PathPart('orders') CaptureArgs(0) {
	my ($self, $c) = @_;
	$c->stash( bootstrap => 1 );
}

sub create : Chained('order_base') PathPart('create') Args(0) {
	my ($self, $c) = @_;
	
	my $lead_id = $c->req->params->{lead_id};
	my $user_id = $c->req->params->{user};
	
	if (my $order = $c->model('DB::TKS::Order')->single({lead_id => $lead_id, seq => 1})) {
		$c->redirect_and_detach( $c->uri_for($c->controller->action_for('show'),$order->id,
		{mid => $c->set_error_msg("Для данного LEAD ID уже сформирована заявка")}));
	}
	
	
	my $lead = $c->model('DB::Vicidial::VicidialLead')->find($lead_id);
	my $user = $c->model('DB::Vicidial::VicidialUser')->single({ user => $user_id });
	
	my $error_msg = 
		(! $lead_id) ? "Не указан LEAD ID"
	  : (! $user_id) ? "Не указан идентификатор оператора"
	  :	(! defined $lead)    ? "Несуществующий LEAD ID"
	  : (! defined $user)    ? "Несуществующий идентификатор оператора"
	  :                        undef;
	  
	if ($error_msg) {
		$c->redirect_and_detach( $c->uri_for($c->controller->action_for('index'),
		{mid => $c->set_error_msg($error_msg)}));
	}
	
	# Create the empty order row for the form
    my $order = $c->model('DB::TKS::Order')->new_result({
		lead_id		 => $lead_id,
		phone_number => $lead->phone_number,
		user         => $user_id,
		full_name    => $user->full_name,
	});
    $DB::single=1;

    $c->stash( order => $order );
	$c->stash( lead => $lead );
    return $self->form($c);
}

sub form {
	my ($self, $c) = @_;
	
	$c->stash->{edit_form} = WebTKS::Form::Order->new(
		vicidial_schema => $c->model('DB::Vicidial')->schema,
	);
	
	my $posted = $c->req->method eq 'POST';
	my $result = $c->stash->{edit_form}->run(
		posted => $posted,
		update_field_list => form_hidden_fields($c->req->params),
		item   => $c->stash->{order},
		params => $c->req->parameters,
		action => $c->uri_for($c->action,  $c->req->captures ),
    );
	
	$c->stash( 
		template => 'orders/create_form.tt', 
		form => $result 
	);
	return unless $result->validated;
	
	# Form validated
	my $order = $c->stash->{order};
	# Send application form
	my $res = $c->model('AppSender')->send($order->app_data);
	# Update order and vicidial_list
	$order->uuid($res->id);
	$order->update;
	my $lead = $c->stash->{lead};
	$lead->comments($res->id);
	$lead->update;
	# Show order 
	$c->res->redirect( $c->uri_for($c->controller->action_for('show'),$order->id,
		{mid => $c->set_status_msg("Заявка успешно сохранена")}));
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

