use utf8;
package TKS::Schema::Result::Event;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

TKS::Schema::Result::Event

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

__PACKAGE__->load_components("FilterColumn");

=head1 TABLE: C<events>

=cut

__PACKAGE__->table("events");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 uuid

  data_type: 'char'
  is_nullable: 0
  size: 32

=head2 user

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 status

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 3

=head2 date

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
  "uuid",
  { data_type => "char", is_nullable => 0, size => 32 },
  "user",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "status",
  { data_type => "char", default_value => "", is_nullable => 0, size => 3 },
  "date",
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


# Created by DBIx::Class::Schema::Loader v0.07035 @ 2014-04-21 13:47:32
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:VpdQnJ9oF66AacTKXfbJJg
__PACKAGE__->filter_column(	
	'date' => {
		filter_to_storage => sub {
			if (ref $_[1]) {
				$_[1]->strftime("%Y-%m-%d %H:%M:%S");
			}
			elsif ($_[1] =~ /^\d+$/) {
				DateTime->from_epoch(epoch => $_[1]);
			}
			else {
				$_[1];
			}
		},
		filter_from_storage => sub {
			if ( $_[1] ne '0000-00-00 00:00:00' ) {
			    DateTime::Format::MySQL->parse_datetime($_[1]);
			}
			else {
			    undef;
			}
		},
	},
);
__PACKAGE__->meta->make_immutable;
1;
