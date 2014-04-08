package WebTKS::Form::Order;
use utf8;
use HTML::FormHandler::Moose;
extends 'WebTKS::Form::Base';
with 'HTML::FormHandler::Widget::Theme::Bootstrap';
use namespace::autoclean;

has '+item_class' => ( default => 'Order' );

has_field 'lead_id' => ( type => 'Hidden' );
has_field 'phone_number' => ( type => 'Hidden' );
has_field 'user' => ( type => 'Hidden' );
has_field 'full_name' => ( type => 'Hidden' );
has_field 'utm_content' => ( type => 'Hidden' );

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
);

has_field 'phone_home' => (
    type => 'Text',
    apply => [ { check => qr/^8\d{10}/, message => 'Пожалуйста, введите телефонный номер в формате 8ХХХХХХХХХХ' } ],
    element_attr => {placeholder => '8XXXXXXXXXX'},
    label => 'Домашний телефон',
);


has_field 'client_declared_credit_history' => (
    type => 'Select',
    default => 4,
    label => 'Кредитная история (со слов клиента)',
);

has_field submit => ( type => 'Submit', value => 'Отправить данные', element_class => ['btn'] );

sub options_client_declared_credit_history {
    my $self = shift;

    return [ 
        1 => 'Хорошая',
        2 => 'Плохая',
        3 => 'Не брал кредитов',
        4 => 'Не знаю',
    ];
   }

__PACKAGE__->meta->make_immutable;

1;

