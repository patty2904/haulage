/* List the registration numbers of the trucks that were not in use between
1 and 5 May inclusive. */

SELECT registration
FROM vehicle
WHERE vehicle_id NOT IN
(SELECT vehicle_id
FROM trip
WHERE ('2012-05-01' <= return_date) and (departure_date <=
'2012-05-05'));