package TKS::Role::SendOrder;
use Modern::Perl;
use Moose::Role;
use namespace::autoclean;
use Carp;
use Const::Fast;

const my $APP_TYPE_ID    => 1;
const my $APP_SUBTYPE_ID => '011201';
const my $COMPLETED      => 1;
const my $CHANNEL        => 'smtershort';
const my $UTM_SOURCE     => 'smter_short_cc';
const my $FORM_TYPE      => 'credit';
const my $TRACK          => 'true';
const my $USER_AGENT     => 'SmarterAgent';
const my $API_URL        => 'https://www.tcsbank.ru/api/v1/add_application1';
const my $DBG_URL        => 'https://uat.tcsbank.ru/api/v1/add_application';

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

sub send_order {
	my ($self, $debug) = @_;
	
	require LWP::UserAgent;
	require JSON;
	
	my $ua = LWP::UserAgent->new(
		agent    => $USER_AGENT,
        ssl_opts => { verify_hostname => 1 },
        timeout  => 60,
    );
	
	my $data = {
		app_type_id					   => $APP_TYPE_ID,
		app_subtype_id				   => $APP_SUBTYPE_ID,
		completed					   => $COMPLETED,
		surname						   => $self->surname,
		name						   => $self->name,
		patronymic  				   => $self->patronymic,
		birthdate                      => $self->birthdate,
		phone_mobile				   => $self->phone_mobile,
		phone_home                     => $self->phone_home,
		channel                        => $CHANNEL,
		wm                             => $self->wm,
		client_declared_credit_history => $self->client_declared_credit_history,
		utm_source					   => $UTM_SOURCE,
		utm_content					   => $self->utm_content,
		form_type					   => $FORM_TYPE,
		track                          => $TRACK,
	};
	
	my $response = $ua->post(
		$debug ? $DBG_URL : $API_URL,
		$data,
		Content_Type => 'application/x-www-form-urlencoded; charset=UTF-8',
	);
	
	die "HTTP_ERROR_CODE: " 
	  . $response->code . " "
	  . "HTTP_ERROR_MSG: " 
	  . $response->error_as_HTML if $response->is_error;
	
	my $result = JSON::decode_json($response->decoded_content);
	
	die "API_ERROR_CODE: " . $result->{resultCode} . " "
	  . "API_ERROR_MSG: " . $result->{errorMessage}
	  . "API_TRACKING_ID: " . $result->{trackingId} if ($result->{resultCode} ne 'OK');
	  
	return $result->{payload}->{id};
}

1;