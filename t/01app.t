#!C:\Perl64\bin\perl.exe
use strict;
use warnings;
use Test::More;

use Catalyst::Test 'WebTKS';

ok( request('/')->is_success, 'Request should succeed' );

done_testing();
