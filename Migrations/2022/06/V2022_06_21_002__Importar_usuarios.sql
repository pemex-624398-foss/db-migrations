set search_path to security;

insert into "user"
    (
        alias, enabled,
        email, email_verified,
        title, forename, surname,
        gender, birthdate, country_id
    )
select
    alias, enabled,
    email, email_verified,
    title, forename, surname,
    gender::public.gender as gender, birthdate::date, country_id
from (
    select
        'admin' as alias, true as enabled, 'admin@pemex.com' as email, true as email_verified,
        null as title, 'Administrador' as forename, 'Principal' as surname,
        null as gender, null as birthdate, 'MX' as country_id
    union
    select
        'ana.medina', false, 'ana.medina@pemex.com', false,
        'Lic.', 'Ana', 'Medina',
        'FEMALE', '1985-12-22', 'MX'
    union
    select
        'juan.perez', false, 'juan.perez@pemex.com', false,
        'Ing.', 'Juan', 'Pérez',
        'MALE', '1970-03-02', 'CA'
) as u
order by u.alias
;