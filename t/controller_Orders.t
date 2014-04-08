use strict;
use warnings;
use Test::More;


use Catalyst::Test 'WebTKS';
use WebTKS::Controller::Orders;

ok( request('/orders')->is_success, 'Request should succeed' );
done_testing();
