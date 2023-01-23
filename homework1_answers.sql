Question 1
answer : --iidfile string

Question 2
answer : 3 (docker run -it entrypoint=bash python:3.9)

Question 3
answer : 20689
SELECT COUNT(*) FROM "DATAWAREHOUSE"."DATA_SCIENCE_USER"."TRIPS_MS_SESSION"
WHERE LPEP_PICKUP_DATETIME = DATE('2019-01-15')

Question 4
answer : 2019-01-15 19:27:58
SELECT LPEP_PICKUP_DATETIME, SUM(TRIP_DISTANCE) as total_distance
FROM "DATAWAREHOUSE"."DATA_SCIENCE_USER"."TRIPS_MS_SESSION"
GROUP BY 1
ORDER BY total_distance DESC
LIMIT 1;

Question 5
answer : 2: 1282 ; 3: 254
SELECT
COUNT(*) AS TOTAL_TRIPS,
PASSENGER_COUNT
FROM "DATAWAREHOUSE"."DATA_SCIENCE_USER"."TRIPS_MS_SESSION"
WHERE LPEP_PICKUP_DATETIME = DATE('2019-01-01') AND (PASSENGER_COUNT = 2 OR PASSENGER_COUNT = 3)
GROUP BY 2
ORDER BY 2 ASC

Question 6
answer : Jamaica
SELECT
ZONE.ZONE,
max(TRIP.TIP_AMOUNT) as max_tip
FROM "DATAWAREHOUSE"."DATA_SCIENCE_USER"."TRIPS_MS_SESSION" TRIP
JOIN  "DATAWAREHOUSE"."DATA_SCIENCE_USER"."ZONES_MS_SESSION" ZONE 
ON TRIP.VENDORID = ZONE.LOCATIONID
                 
GROUP BY 1
ORDER BY max_tip DESC

