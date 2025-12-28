with station as(
    select
    distinct
    START_STATION_ID as station_id,
    START_STATION_NAME as station_name,
    START_LAT as station_lat,
    START_LNG as station_lng

    FROM
{{source("RAW",'BIKE_RIDES')}}
)

select * from station