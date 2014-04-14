package WebTKS::Form::Order;
use utf8;
use HTML::FormHandler::Moose;
extends 'WebTKS::Form::Base';
with 'HTML::FormHandler::Widget::Theme::Bootstrap';
use namespace::autoclean;

has '+error_message' => ( default => 'Заполненная форма содержит ошибки.' );
has '+item_class'    => ( default => 'Order' );

has 'vicidial_schema' => (
	isa => 'Vicidial::Schema',
	is => 'ro',
	required => 1,
);

has_field 'lead_id' => ( 
	type => 'Hidden',
);

has_field 'phone_number' => ( 
	type => 'Hidden',
);

has_field 'user' => ( 
	type => 'Hidden',
);

has_field 'full_name' => ( 
	type => 'Hidden',
);

has_field 'surname' => (
    type => 'Text',
    required => 1,
    required_message => 'Пожалуйста, введите фамилию клиента',
    label => 'Фамилия',
);

has_field 'name' => (
    type => 'Text',
    required => 1,
    required_message => 'Пожалуйста, введите имя клиента',
    label => 'Имя',
);

has_field 'patronymic' => (
    type => 'Text',
    required => 0,
    label => 'Отчество',
	not_nullable => 1,
	default => '',
);

has_field 'birthdate' => ( 
    type => 'Date',
    label => 'Дата рождения',
    format => '%d/%m/%Y',
    element_class    => [qw/input-mini date/], 
    element_attr => {placeholder => 'дд/мм/гггг'},
);

has_field 'phone_mobile' => (
    type => 'Text',
    apply => [ { check => qr/^8\d{10}/, message => 'Пожалуйста, введите телефонный номер в формате 8ХХХХХХХХХХ' } ],
    element_attr => {placeholder => '8XXXXXXXXXX'},
    label => 'Мобильный телефон',
	not_nullable => 1,
	default => '',
);

has_field 'phone_home' => (
    type => 'Text',
    apply => [ { check => qr/^8\d{10}/, message => 'Пожалуйста, введите телефонный номер в формате 8ХХХХХХХХХХ' } ],
    element_attr => {placeholder => '8XXXXXXXXXX'},
    label => 'Домашний телефон',
	not_nullable => 1,
	default => '',
);


has_field 'client_declared_credit_history' => (
    type => 'Select',
    label => 'Кредитная история (со слов клиента)',
	default => 4,
);

has_field submit => ( type => 'Submit', value => 'Отправить данные', element_class => ['btn'] );

sub options_client_declared_credit_history {
	[ 
        1 => 'Хорошая',
        2 => 'Плохая',
        3 => 'Не брал кредитов',
        4 => 'Не знаю',
    ];
}

sub validate_lead_id {
	my ($self, $field) = @_;
	
	$self->vicidial_schema
		 ->resultset('VicidialLead')
		 ->find($field->value) ||
	$self->add_form_error('Несуществующий LEAD ID');
	
	
}
	
	
  
__PACKAGE__->meta->make_immutable;

1;


