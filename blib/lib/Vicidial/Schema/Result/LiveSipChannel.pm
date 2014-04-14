use utf8;
package Vicidial::Schema::Result::LiveSipChannel;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::LiveSipChannel

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<live_sip_channels>

=cut

__PACKAGE__->table("live_sip_channels");

=head1 ACCESSORS

=head2 channel

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 server_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 channel_group

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 extension

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 channel_data

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=cut

__PACKAGE__->add_columns(
  "channel",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "server_ip",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "channel_group",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "extension",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "channel_data",
  { data_type => "varchar", is_nullable => 1, size => 100 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-09-13 13:34:59
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RHQYuCyaryTtm6ZFTcSItg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
