set search_path to public;

create type gender as enum ('MALE', 'FEMALE');


set search_path to security;

create table "user" (
    user_id serial not null primary key,
    alias varchar(50) not null,
    enabled boolean not null default true,

    email varchar(255) null unique,
    email_verified boolean not null default false,
    
    title varchar(20) null,
    forename varchar(50) not null,
    surname varchar(50) not null,
    gender public.gender null,
    birthdate date null,

    country_id char(2) not null references globalization.country(country_id) on update cascade on delete restrict,

    unique (alias)
);
