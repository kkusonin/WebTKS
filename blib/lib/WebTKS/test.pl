use strict;
use lib 'lib';
use utf8;
binmode STDOUT, ":encoding(cp866)";
use Data::Dumper;
use TKS::API::AppSender;

my $sender = TKS::API::AppSender->new(
	url => 'https://uat.tcsbank.ru/api/v1/add_application',
);

my $app_data = {
	name => 'Иван',
	surname => "Иванов",
	patronymic => 'Иванович',
 	birthdate => '13021990',
	phone_mobile => 89219345678,
	phone_home => 88123322322,
	client_declared_credit_history => 4,
	wm => 1111,
};

my $result = $sender->send($app_data);

print Dumper($result);