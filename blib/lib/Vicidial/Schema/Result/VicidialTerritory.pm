use utf8;
package Vicidial::Schema::Result::VicidialTerritory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialTerritory

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

=head1 TABLE: C<vicidial_territories>

=cut

__PACKAGE__->table("vicidial_territories");

=head1 ACCESSORS

=head2 territory_id

  data_type: 'mediumint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 territory

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 territory_description

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "territory_id",
  { data_type => "mediumint", extra => { unsigned => 1 }, is_nullable => 0 },
  "territory",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "territory_description",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</territory_id>

=back

=cut

__PACKAGE__->set_primary_key("territory_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<uniqueterritory>

=over 4

=item * L</territory>

=back

=cut

__PACKAGE__->add_unique_constraint("uniqueterritory", ["territory"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-09-13 13:35:00
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cT1h18RUBDRhSREJnw59yA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
