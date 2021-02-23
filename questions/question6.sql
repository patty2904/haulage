/* Find the five trucks that are most used during the six months covered by the
data, which have a non-blank (non-null) value in the body column. Order by the number
of trips on which they were used. */

SELECT make, body, registration, COUNT(trip_id) AS trips
FROM trip t
JOIN vehicle v ON (t.vehicle_id=v.vehicle_id)
JOIN model m ON (v.model=m.model)
WHERE body != ' '
GROUP BY make, body, registration
ORDER BY COUNT(registration) DESC
LIMIT 5;