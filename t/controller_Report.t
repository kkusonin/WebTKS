use strict;
use warnings;
use Test::More;


use Catalyst::Test 'WebTKS';
use WebTKS::Controller::Report;

ok( request('/report')->is_success, 'Request should succeed' );
done_testing();
