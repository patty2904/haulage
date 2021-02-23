/*How many items were transported during trip 73450? */

SELECT COUNT(trip_id) AS Items
FROM manifest
WHERE trip_id=73450;