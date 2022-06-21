set search_path to globalization;

create table country (
    country_id char(2) not null primary key,
    name varchar(200) not null unique,
    three_char_code char(3) null,
    numeric_code int null
);
