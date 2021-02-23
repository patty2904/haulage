/* alter the database to include any additional tables and attributes required */

create table cam (
cam_id integer auto_increment PRIMARY KEY,
 first_name varchar(20) not null,
 last_name varchar(20) not null,
 ni_no varchar(13),
 telephone varchar(20),
 mobile varchar(20),
);

create table enquiry (
enquiry_id integer auto_increment PRIMARY KEY,
cam_id integer,
reference integer,
enquiry_details varchar(300) not null,
enquiry_date datetime,
is_open bool,
foreign key (cam_id) references cam(cam_id),
foreign key (reference) references customer(reference)
);

create table response (
response_id integer auto_increment PRIMARY KEY,
enquiry_id integer,
cam_id integer,
response_details varchar(300) not null,
response_date datetime,
follow_up varchar(300) not null,
follow_up_date datetime,
foreign key (enquiry_id) references enquiry(enquiry_id),
foreign key (cam_id) references cam(cam_id)
);

ALTER TABLE customer
ADD cam_id integer,
ADD foreign key (cam_id) references cam(cam_id);
ALTER TABLE manifest
ADD cam_id integer,
ADD foreign key (cam_id) references cam(cam_id);
