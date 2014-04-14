use utf8;
package Vicidial::Schema::Result::VicidialStatus;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialStatus

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

=head1 TABLE: C<vicidial_statuses>

=cut

__PACKAGE__->table("vicidial_statuses");

=head1 ACCESSORS

=head2 status

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 status_name

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 selectable

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 human_answered

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 category

  data_type: 'varchar'
  default_value: 'UNDEFINED'
  is_nullable: 1
  size: 20

=head2 sale

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 dnc

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 customer_contact

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 not_interested

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 unworkable

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 scheduled_callback

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 completed

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "status",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "status_name",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "selectable",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "human_answered",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "category",
  {
    data_type => "varchar",
    default_value => "UNDEFINED",
    is_nullable => 1,
    size => 20,
  },
  "sale",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "dnc",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "customer_contact",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "not_interested",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "unworkable",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "scheduled_callback",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "completed",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</status>

=back

=cut

__PACKAGE__->set_primary_key("status");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-09-13 13:35:00
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ogCGCsLYISqY6ufkq+CAHg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
