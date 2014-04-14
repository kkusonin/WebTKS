package TKS::API::AppSender;
use strict;
use JSON;
use Moose;
use namespace::autoclean;
use Const::Fast;
use LWP::UserAgent;
use TKS::API::AppSender::Result;

const my $UA_TIMEOUT     => 60;
const my $CONTENT_TYPE   => 'application/x-www-form-urlencoded; charset=UTF-8';
const my $APP_TYPE_ID    => 1;
const my $APP_SUBTYPE_ID => '011201';
const my $COMPLETED      => 1;
const my $CHANNEL        => 'smtershort';
const my $UTM_SOURCE     => 'smter_short_cc';
const my $FORM_TYPE      => 'credit';
const my $TRACK          => 'true';
const my $USER_AGENT     => 'SmarterAgent';
const my $API_URL        => 'https://www.tcsbank.ru/api/v1/add_application';
const my $DBG_URL        => 'https://uat.tcsbank.ru/api/v1/add_application';

has 'user_agent' => (
    is => 'ro',
    isa => 'LWP::UserAgent',
    lazy => 1,
    builder => '_init_ua',
);

has 'url' => (
	is => 'ro',
	isa => 'Str',
	required => 1,
);

has 'app_params' => (
	is => 'ro',
	isa => 'HashRef',
	required => 1,
	default => sub {
		{
			app_type_id					   => $APP_TYPE_ID,
			app_subtype_id				   => $APP_SUBTYPE_ID,
			completed					   => $COMPLETED,
			channel                        => $CHANNEL,
			utm_source					   => $UTM_SOURCE,
			form_type					   => $FORM_TYPE,
			track                          => $TRACK,
		}
	}
);
=index2 _init_ua

=cut

sub _init_ua {
    LWP::UserAgent->new(
        agent => $USER_AGENT,
        ssl_opts => { verify_hostname => 1 },
        timeout => $UA_TIMEOUT,
    );
}

=index2 add_application

=cut

sub send {
    my ( $self, $app_data ) = @_;
	
	use Data::Dumper;
	print Dumper($app_data);
	
	@{$app_data}{keys %{$self->app_params}} = values %{$self->app_params};
	
    my $response = $self->user_agent->post(
        $self->url, 
        $app_data,
        Content_Type => $CONTENT_TYPE,
    );
    
	if ($response->is_success) {
		return TKS::API::AppSender::Result->new(decode_json $response->decoded_content);
	}
	else {
		return TKS::API::AppSender::Result->new(
					resultCode => "HTTP_ERROR_CODE_" . $response->code,
					errorMessage => $response->error_as_HTML
		        );
	}
}

__PACKAGE__->meta->make_immutable;

1;
