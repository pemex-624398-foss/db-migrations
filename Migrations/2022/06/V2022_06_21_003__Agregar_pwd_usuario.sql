set search_path to security;

alter table "user"
    add column pass varchar(20) null
;