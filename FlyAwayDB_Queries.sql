-- ## Create Database Query  : Start ##
Create Database airwaydb
use airwaydb
 
-- ## Create Query for Admin Login Table  ## 
 Create table tbl_login(id int NOT NULL PRIMARY KEY AUTO_INCREMENT,username Varchar(50), password Varchar(50), roleid int);

-- ## Insert Query for Data into Admin Login Table ## 
 insert into tbl_login(username, password, roleid) values
('bheem', 'bheem123', 1)
insert into tbl_login(username, password, roleid) values
('ram', 'ram123', 1)
 

-- ## Create Query for FlightData Table ##
Create table tbl_flightsdata( id int NOT NULL PRIMARY KEY AUTO_INCREMENT, flightno varchar(50), flightname varchar(50), fromcity varchar(50), tocity varchar(50), date date, time time, airportname varchar(50), Ticketprice double, description varchar(50));
 
 -- ## Insert Query for FlightData Table ##
insert into tbl_flightsdata( flightno, flightname, fromcity, tocity, date, time, airportname, Ticketprice, description) values
( 'AW101', 'Tony AirLines', 'Delhi', 'Mumbai', '2021-02-11', '14:00:00', 'ASAV Airport', 8500, 'Happy Journey')

insert into tbl_flightsdata( flightno, flightname, fromcity, tocity, date, time, airportname, Ticketprice, description) values
( 'AW102', 'Loki Airs', 'Bangalore', 'Hydeabad', '2021-01-26', '18:00:00', 'Garuda Airport', 4000, 'Happy Journey')
 
insert into tbl_flightsdata( flightno, flightname, fromcity, tocity, date, time, airportname, Ticketprice, description) values
( 'AW103', 'Thor AirLines', 'Hyderabad', 'Mumbai', '2021-02-11', '23:00:00', 'Rajeev Airport', 3500, 'Happy Journey')

insert into tbl_flightsdata( flightno, flightname, fromcity, tocity, date, time, airportname, Ticketprice, description) values
( 'AW104', 'Stranger Airs', 'Pune', 'Delhi', '2021-01-29', '19:30:00', 'PSVR Airport', 6000, 'Happy Journey')

 -- ## Select  Query for FlightData and admin Login tables ##
 select * from tbl_flightsdata
  
 select * from tbl_login
