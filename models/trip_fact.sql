{{ config(materialized='table') }}

with trips as(
    select
    RIDE_ID,
    RIDEABLE_TYPE,
    date(to_timestamp(STARTED_AT)) as trip_date,
    START_STATION_ID,
    END_STATION_ID,
    MEMBER_CASUAL,
    timestampdiff(second,to_timestamp(STARTED_AT),to_timestamp(ENDED_AT)) as trip_duration_seconds
        FROM
{{ref("stg_bike")}}
)

select * from trips