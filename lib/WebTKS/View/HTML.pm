package WebTKS::View::HTML;
use utf8;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    ENCODING => 'utf-8',
    TEMPLATE_EXTENSION => '.tt',
    INCLUDE_PATH => [
        WebTKS->path_to('root'),
    ],
    WRAPPER => 'wrapper.tt',
    render_die => 1,
);

=head1 NAME

WebTKS::View::HTML - TT View for WebTKS

=head1 DESCRIPTION

TT View for WebTKS.

=head1 SEE ALSO

L<WebTKS>

=head1 AUTHOR

A clever guy

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
