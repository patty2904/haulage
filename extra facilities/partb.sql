/* insert sample data for at least three customers and their CAMs */

insert into cam (first_name, last_name, ni_no, telephone, mobile)
values ('Ezekiel', 'Sunson', 'EZ73591288', '01317779090',
'079945327880');

insert into cam (first_name, last_name, ni_no, telephone, mobile)
SET08120 Database Systems SQL – Haulage Assessment
values ('Raphael', 'Angelson', 'RA90210091', '01316783819',
'07334555633');

insert into cam (first_name, last_name, ni_no, telephone, mobile)
values ('Uriel', 'Godson', 'UR11227422', '01311238763', '07883677771');

insert into customer (company_name, address, town, post_code,
telephone, contact_fname, contact_sname, contact_email, cam_id)
values('Mattel, Inc.',
'2020 Hollywood Boulevard', 'Beverly Hills', '90210', '3102853800',
'Kenneth', 'Carson', 'k.carson@mattel.com', '1');

insert into customer (company_name, address, town, post_code,
telephone, contact_fname, contact_sname, contact_email, cam_id)
values('Microphones Ltd.',
'470-1140 Kuchiyokawacho Hoki', 'Hyogo', '6730742', '81215690700',
'Yumi', 'Takakura', 'y.takakura@microphones.com', '2');

insert into customer (company_name, address, town, post_code,
telephone, contact_fname, contact_sname, contact_email, cam_id)
values('Grand Union',
'Reeperbahn 5', 'Altefahr', '18573', '0383067721',
'Diana B', 'Weber', 'd.weber@grandunion.com', '3');

insert into enquiry (cam_id, reference, enquiry_details, enquiry_date,
is_open)
values ('1', '301', 'When will my order arrive?', '2012-06-04', true);

insert into enquiry (cam_id, reference, enquiry_details, enquiry_date,
is_open)
values ('2', '302', 'My order came damaged. I want another sent.',
'2012-02-09', false);

insert into enquiry (cam_id, reference, enquiry_details, enquiry_date,
is_open)
values ('3', '303', 'I wanted to write a report about your company.
Would you be able to provide me with some details?', '2012-01-18',
true);

insert into response (enquiry_id, cam_id, response_details,
response_date, follow_up, follow_up_date)
values ('1', '1', 'Hi Kenneth, Thank you for your enquiry. I can see
that there has been a delay to your shipping.
We are terribly sorry about that. Please allow 3 more working days,
otherwise you can get in touch with the merchant for a shipping refund.
Kind regards, Ezekiel.', '2012-06-05', 'null', null);

insert into response (enquiry_id, cam_id, response_details,
response_date, follow_up, follow_up_date)
values ('2', '2', 'Hi Yumi. Thanks for getting in touch. We are terrible
sorry about this. We will contact the merchant on your behalf 
SET08120 Database Systems SQL – Haulage Assessment
so that another order can be shipped. Please look out for an email from
them. Best, Rapahel.',
'2012-02-09', 'null', null);

insert into response (enquiry_id, cam_id, response_details,
response_date, follow_up, follow_up_date)
values ('3', '3', 'Hi Diana. Please let us know what kind of details you
are looking for. Uriel.',
'2012-01-22', 'Hi again. I am looking for some general history such as
when the company was founded and who is the CEO. Sincerely, Diana',
'2012-01-23');
