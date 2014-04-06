use strict;
use warnings;

use WebTKS;

my $app = WebTKS->apply_default_middlewares(WebTKS->psgi_app);
$app;

