/* Find the trip in which exactly 30 items were transported. */

SELECT trip_id
FROM manifest
GROUP BY trip_id
HAVING COUNT(trip_id) = 30;