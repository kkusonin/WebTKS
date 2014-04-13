use utf8;
package TKS::Schema::Result::Order;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

TKS::Schema::Result::Order

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::FilterColumn>

=back

=cut

__PACKAGE__->load_components(qw(FilterColumn));

=head1 TABLE: C<orders>

=cut

__PACKAGE__->table("orders");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 lead_id

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 seq

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 0

=head2 phone_number

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 18

=head2 user

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 full_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 surname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 patronymic

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 birthdate

  data_type: 'date'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00'
  is_nullable: 0

=head2 phone_mobile

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 18

=head2 phone_home

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 18

=head2 client_declared_credit_history

  data_type: 'enum'
  extra: {list => ["GOOD","BAD","NOT EXISTENT","UNKNOWN"]}
  is_nullable: 1

=head2 utm_content

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 3

=head2 creation_time

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 uuid

  data_type: 'char'
  default_value: 0
  is_nullable: 0
  size: 32

=head2 entry_time

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 update_time

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 uuid_crc

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "lead_id",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "seq",
  {
    data_type => "integer",
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "phone_number",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 18 },
  "user",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "full_name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "surname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "patronymic",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "birthdate",
  {
    data_type => "date",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00",
    is_nullable => 0,
  },
  "phone_mobile",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 18 },
  "phone_home",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 18 },
  "client_declared_credit_history",
  {
    data_type => "enum",
    extra => { list => ["GOOD", "BAD", "NOT EXISTENT", "UNKNOWN"] },
    is_nullable => 1,
  },
  "utm_content",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 3 },
  "creation_time",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "uuid",
  { data_type => "char", default_value => 0, is_nullable => 0, size => 32 },
  "entry_time",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00 00:00:00",
    is_nullable => 0,
  },
  "update_time",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00 00:00:00",
    is_nullable => 0,
  },
  "uuid_crc",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<idx_lead_seq>

=over 4

=item * L</lead_id>

=item * L</seq>

=back

=cut

__PACKAGE__->add_unique_constraint("idx_lead_seq", ["lead_id", "seq"]);


# Created by DBIx::Class::Schema::Loader v0.07035 @ 2014-04-09 06:50:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GB6RkwYpDH5X6ZZgaewwAw
with 'TKS::Role::SendOrder';

sub wm { $_[0]->user; }

sub processed { ($_[0]->uuid) ? 1 : 0 }

around BUILDARGS => sub {
    my ($orig, $class, $args) = @_;
	
	foreach (keys %$args) {
		delete $args->{$_} if !defined $args->{$_};
	}
	
	$class->$orig($args);
};

__PACKAGE__->filter_column(
	'birthdate',
	{
		filter_to_storage => sub {
			if (ref $_[1]) {
				return $_[1]->strftime('%Y-%m-%d');
			}
			else {
				sprintf "%04d-%02d-%02d",reverse $_[1] =~ /(\d+)\/(\d+)\/(\d+)/;
			}
		},
		filter_from_storage => sub {
			sprintf "%02d/%02d/%04d",reverse $_[1] =~ /(\d+)-(\d+)-(\d+)/;
		},
	}
);

__PACKAGE__->meta->make_immutable;
1;
