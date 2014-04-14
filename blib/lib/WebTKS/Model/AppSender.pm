package WebTKS::Model::AppSender;
use strict;
use base qw/Catalyst::Model::Adaptor/;

__PACKAGE__->config(
	class => 'TKS::API::AppSender',
	args => {
		url => 'https://uat.tcsbank.ru/api/v1/add_application',
	}
);

1;
