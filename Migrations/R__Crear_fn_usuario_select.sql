set search_path to security;

drop function if exists fn_user_select;
create function fn_user_select(
    _country_id char(2)
)
returns table (
    user_id integer,
    alias varchar(50),
    enabled boolean,

    email varchar(255),
    email_verified boolean,    

    title varchar(20),
    forename varchar(50),
    surname varchar(50),

    gender public.gender,
    birthdate date,

    country_id char(2),
    country_name varchar(200)
)
language plpgsql
as
$$
begin
    set search_path to security;

    return query
        select u.* 
        from user_extended as u
        where u.country_id = _country_id
    ;
end
$$;