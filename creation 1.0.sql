Create table Tarif(
ID_tarif serial primary key,
Naimenovanie_tarif varchar(30) not null,
visits interval not null,
premises varchar(200),
available_time varchar(50) not null,
price int not null
);


Create table klient(
ID_klient serial primary key,
Familiya varchar(30) not null,
Imya varchar(30) not null,
Otchestvo varchar(30) not null,
DOB date not null,
Telefon varchar(12) not null
);

Create table Status(
ID_status serial primary key,
Current_status varchar(30) not null
);

Create table Abonement(
ID_aboniment serial primary key,
Klient_ID serial not null REFERENCES klient (ID_klient),
tarif_ID serial not null REFERENCES Tarif (ID_tarif),
status serial not null REFERENCES Status (ID_status),	
Issue_date date not null,
validity interval not null,
expiration_date date not null
);




Create table trainer(
ID_trainer serial primary key,
Familiya varchar(30) not null,
Imya varchar(30) not null,
Otchestvo varchar(30) not null,
telephone varchar(12) not null
);


Create table Type_workout(
ID_type_workout serial primary key,
Type_workout varchar(30) not null,
description varchar(300) not null
);


Create table Premises_type(
ID_premises_type serial primary key,
Naimenovanie varchar(30) not null,
purpose varchar(300) not null	
);

Create table Premises(
ID_premises serial primary key,
PNumber int not null,
Type_premises serial not null REFERENCES Premises_type (ID_premises_type),	
Room_size varchar(50) not null
);


Create table timetable(
ID_timetable serial primary key,
day_of_the_week varchar(30) not null,
hours varchar(20) not null,
Type_workout serial not null REFERENCES Type_workout (ID_type_workout),	
Trainer serial not null REFERENCES trainer (ID_trainer),	
premises_ID serial not null REFERENCES Premises (ID_premises)
);


Create table Workout(
ID_workout serial primary key,
individual_klients_ID serial not null REFERENCES klient (ID_klient),
timetable serial not null REFERENCES timetable (ID_timetable)
);





