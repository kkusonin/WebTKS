package TKS::Order;
use utf8;
use DateTime;
use Moose;
use Moose::Util::TypeConstraints;
use namespace::autoclean;

=head1 NAME

Form object for TKS Controller

=head1 SYNOPSYS

Form used for add_application action ontks web service

=head1 DESCRIPTION

Catalyst Form.

=cut

subtype 'PhoneNumber', 
	as 'Str',
	where { $_ eq '' or $_ =~/^8\d{10}$/ },
	message { "Телефонный номер должен быть в формате 8ХХХХХХХХХХ" };
	
subtype 'Name',
	as 'Str',
	where { $_ },
	message { 'Поле "Имя" не может быть пустым' };
	
subtype 'Surname',
	as 'Str',
	where { $_ },
	message { 'Поле "Фамилия" не может быть пустым' };

subtype 'DateTime',
	as 'Object',
	where { $_->isa('DateTime') };
	
subtype 'Birthdate',
	as 'DateTime',
	where { $_ = DateTime->now },
	message { "Необходима дата рождения в формате 'дд/мм/гггг'" };
	
coerce 'Birthdate',
	from 'Str',
	via {
		require DateTime::Format::Strptime;
		return  DateTime::Format::Strptime
			->new(pattern => '%d/%m/%Y')
			->parse_datetime($_);
	};
	
has 'schema' => (
	is => 'rw',
	required => 1,
	isa => 'DBIx::Class::Schema',
);

has 'lead_id' => (
	is => 'rw',
	isa => 'Int',
	required => 1,
);

has 'app_type_id' => (
	is => 'ro',
	isa => 'Int',
	init_arg => undef,
	default => 1,
);

has 'app_subtype_id' => (
	is => 'ro',
	isa => 'Str',
	init_arg => undef,
	default => '011201',
);

has 'completed' => (
	is => 'ro',
	isa => 'Int',
	init_arg => undef,
	default => 1,
);

has 'name' => (
	is => 'rw',
	isa => 'Name',
	required => 1,
);

has 'surname' => (
	is => 'rw',
	isa => 'Surname',
	required => 1,
);

has 'patronymic' => (
    is => 'rw',
    isa => 'Str',
);

has 'birthdate' => (
	is => 'rw',
	isa => 'Birthdate',
	coerce => 1,
);

has 'phone_mobile' => (
	is => 'rw',
	isa => 'PhoneNumber',
	default => '',
);

has 'phone_home' => (
	is => 'rw',
	isa => 'PhoneNumber',
	default => '',
);

has 'channel' => (
	is => 'ro',
	isa => 'Str',
	init_arg => undef,
	default => 'smtershort',
);

has 'wm' => (
    is => 'rw',
    isa => 'Str',
    default => '0000',
);

has 'client_declared_credit_history' => (
	is => 'rw',
	isa => 'Int',
	default => 4,
);

has 'utm_source' => (
	is => 'ro',
	isa => 'Str',
	init_arg => undef,
	default => 'smter_short_cc',
);

has 'utm_content' => (
    is => 'rw',
    isa => 'Str',
    default => '',
);

has 'form_type' => (
    is => 'ro',
    isa => 'Str',
    init_arg => undef,
    default => 'credit',
);

has 'track' => (
    is => 'ro',
    isa => 'Str',
    init_arg => undef,
    default => 'true',
);

sub BUILD {
	my $self->shift;
	
}

my @attr_serializable = qw(
    app_type_id
    app_subtype_id
    completed
    surname
    name
    patronymic
    birthdate
    phone_mobile
    phone_home
    channel
    wm
    client_declared_credit_history
    utm_source
    utm_content
    form_type
    track
);

sub to_hashref {
	my $self = shift;
	my %obj_hash;
	
	foreach (@attr_serializable) {
		$obj_hash{$_} = __PACKAGE__->meta->get_attribute($_)->get_value($self);
	}
	
	return \%obj_hash;
}

__PACKAGE__->meta->make_immutable;

1;
