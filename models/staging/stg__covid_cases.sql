with source as (
    select * from  {{ source('covid_cases', 'covid_timeline') }}
)

SELECT
    measured_at::datetime,
    country_code::varchar(10),
    latitude::float,
    longitude::float,
    acumulated_confirmed_cases::integer,
    acumulated_deaths::integer
FROM
source