package Vicidial::Schema::ResultSet::VicidialCampaign;
use strict;
use warnings;
use base 'DBIx::Class::ResultSet';

=head2 allowed_for_user

=cut

sub allowed_for_user {
    my ( $self, $user ) = @_;

    my @allowed_campaigns = ($user->user_group
                                    ->allowed_campaign_ids);

    return (scalar @allowed_campaigns == 1 
            && $allowed_campaigns[0] eq '-ALL-CAMPAIGNS-') ? $self
            : $self->search({campaign_id => { -in => \@allowed_campaigns }});
}                                              

1;

