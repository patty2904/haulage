/* Which vehicles have never transported anything in category C? Only
show vehicles whose registration plate begins with B. */

SELECT model, registration
FROM vehicle
WHERE registration LIKE 'B%'
AND vehicle_id NOT IN
(SELECT vehicle_id
FROM trip t
JOIN manifest m ON(m.trip_id = t.trip_id)
WHERE category='C');
