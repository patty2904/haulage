/* query the database to retrieve the information needed to illustrate the above
requirements */

SELECT cam_id, reference, enquiry_details, enquiry_date, is_open
FROM enquiry;

SELECT enquiry_id, cam_id, response_details, response_date, follow_up,
follow_up_date
FROM response;

SELECT reference, company_name, address, town, post_code,
telephone, contact_fname, contact_sname, contact_email, cam_id
FROM customer
WHERE reference >= 301
AND reference <= 303;

SELECT cam_id, first_name, last_name, ni_no, telephone, mobile
FROM cam;