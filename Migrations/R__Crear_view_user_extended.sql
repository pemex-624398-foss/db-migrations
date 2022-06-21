set search_path to security;

create or replace view user_extended as
select
    u.user_id,
    u.alias,
    u.enabled,
    u.email,
    u.email_verified,
    u.title,
    u.forename,
    u.surname,
    
    u.gender,
    u.birthdate,
    u.country_id,
    c.name as country_name
from "user" as u
    join globalization.country as c
        on c.country_id = u.country_id
;