show schemas;
use sys;
DROP TABLE vehicle,brand,carmodel,caropt,dealer,customer,inventory;
use sys;

/*ALL TABLE CREATION ARGUMENTS */
CREATE TABLE IF NOT EXISTS brand (
br_id INT PRIMARY KEY NOT NULL, 
br_name VARCHAR(256) NOT NULL
);
CREATE TABLE IF NOT EXISTS vehicle (
ve_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
vin VARCHAR(256) UNIQUE NOT NULL , 
br_id INT,
model VARCHAR(256) NOT NULL, 
relyr INT,
colour VARCHAR(128),
price INT NOT NULL, 
availability VARCHAR(128),
FOREIGN KEY (br_id) REFERENCES brand(br_id)
);
CREATE TABLE IF NOT EXISTS carmodel (
mod_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
relyr INT,
model VARCHAR(256),
vin VARCHAR(256),
br_id INT,
 FOREIGN KEY (vin) REFERENCES vehicle(vin),
 FOREIGN KEY (br_id) REFERENCES brand(br_id)
);
CREATE TABLE IF NOT EXISTS brand (
br_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
br_name VARCHAR(256) NOT NULL 
);
CREATE TABLE IF NOT EXISTS caropt (
op_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
ve_id INT NOT NULL, 
opt_name VARCHAR(256), 
price INT,
FOREIGN KEY (ve_id) REFERENCES vehicle(ve_id)
);

CREATE TABLE IF NOT EXISTS dealer (
dea_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
dea_phone CHAR(10) UNIQUE NOT NULL, 
dea_firstnm VARCHAR(128) NOT NULL, 
dea_lastnm VARCHAR(128) NOT NULL, 
dea_location VARCHAR(128) NOT NULL
);

CREATE TABLE IF NOT EXISTS customer (
c_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
dea_id INT, 
cust_phone CHAR(10) UNIQUE, 
cust_firstnm VARCHAR(128),
cust_lastnm VARCHAR(128),
gender VARCHAR(32),
FOREIGN KEY (dea_id) REFERENCES dealer(dea_id)
);

CREATE TABLE IF NOT EXISTS inventory (
inv_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
ve_id INT, 
dea_id INT, 
c_id INT,
FOREIGN KEY (ve_id) REFERENCES vehicle(ve_id),
FOREIGN KEY (dea_id) REFERENCES dealer(dea_id),
FOREIGN KEY (c_id) REFERENCES customer(c_id)
);
/*ALL INSERT DATA ARGUMENTS */
insert into brand (br_id, br_name) values (1, 'Subaru');
insert into brand (br_id, br_name) values (2, 'Dodge');
insert into brand (br_id, br_name) values (3, 'Audi');
insert into brand (br_id, br_name) values (4, 'Honda');
insert into brand (br_id, br_name) values (5, 'Chrysler');
insert into brand (br_id, br_name) values (6, 'Ford');
insert into brand (br_id, br_name) values (7, 'Panoz');
insert into brand (br_id, br_name) values (8, 'Lincoln');
insert into brand (br_id, br_name) values (9, 'Chrysler');
insert into brand (br_id, br_name) values (10, 'Toyota');
insert into brand (br_id, br_name) values (11, 'Mercury');
insert into brand (br_id, br_name) values (12, 'Mercedes-Benz');
insert into brand (br_id, br_name) values (13, 'Chevrolet');
insert into brand (br_id, br_name) values (14, 'Land Rover');
insert into brand (br_id, br_name) values (15, 'Suzuki');
insert into brand (br_id, br_name) values (16, 'Hyundai');
insert into brand (br_id, br_name) values (17, 'Mazda');
insert into brand (br_id, br_name) values (18, 'Volvo');
insert into brand (br_id, br_name) values (19, 'Dodge');
insert into brand (br_id, br_name) values (20, 'Volkswagen');

insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('WA1AY94L37D907148', 'Town & Country', 1, 2011, 'Crimson', '61', 'y');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('SAJWA4FB5CL590563', 'Electra', 7, 1987, 'Violet', '07003', 'n');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('2C3CCAKG7EH515248', 'Mirage', 8, 1992, 'Purple', '382', 'n');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('WBAFU7C59DD192691', 'ES', 9, 2005, 'Puce', '11447', 'n');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('5TDBK3EH4BS818916', 'Matrix', 5, 2004, 'Red', '0052', 'n');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('2T1KU4EE7DC338905', 'Elise', 3, 2007, 'Fuscia', '557', 'n');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('4T1BF1FK6EU767515', 'Eldorado', 2, 2001, 'Goldenrod', '785', 'y');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('WAUAH94F46N104824', 'Equinox', 4, 2007, 'Purple', '4', 'y');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('JTDJTUD31DD320174', 'Windstar', 6, 2003, 'Khaki', '96', 'y');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('5GAKVBED1CJ911567', 'H1', 1, 1997, 'Purple', '5115', 'n');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('WAUGL98E75A068708', 'C8', 15, 2005, 'Pink', '86', 'n');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('WAULD64B63N079324', 'Discovery Series II', 19, 2000, 'Aquamarine', '3874', 'y');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('WAUDGBFL3DA533600', 'Daewoo Magnus', 17, 2004, 'Blue', '215', 'y');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('WA19FAFL9DA687258', 'Range Rover', 18, 2012, 'Pink', '74', 'y');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('YV4852CT3A1531336', 'Camaro', 10, 2011, 'Aquamarine', '68428', 'n');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('2T1KE4EE1AC040892', 'GS', 2, 1998, 'Green', '3143', 'n');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('ML32A3HJ0FH794287', 'E-Series', 6, 2008, 'Teal', '5857', 'y');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('SCFAD02A68G234548', 'LaCrosse', 8, 2007, 'Pink', '6', 'n');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('WBAEB53549C049876', 'Silverado', 13, 2003, 'Purple', '37', 'y');
insert into vehicle (vin, model, br_id, relyr, colour, price, availability) values ('1G4HR54K54U025438', 'M3', 11, 2011, 'Goldenrod', '42445', 'n');

INSERT INTO carmodel (relyr,model,vin,br_id) VALUES (2011,'Town & Country','WA1AY94L37D907148',1);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(1987,'Electra','SAJWA4FB5CL590563',7);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(1992,'Mirage','2C3CCAKG7EH515248',8);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(2005,'ES','WBAFU7C59DD192691',9);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(2004,'Matrix','5TDBK3EH4BS818916',5);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(2007,'Elise','2T1KU4EE7DC338905',3);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(2001,'Eldorado','4T1BF1FK6EU767515',2);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(2007,'Equinox','WAUAH94F46N104824',4);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(2003,'Windstar','JTDJTUD31DD320174',6);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES (1997,'H1','5GAKVBED1CJ911567',1);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(2005,'C8','WAUGL98E75A068708',15);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(2000,'Discovery Series II','WAULD64B63N079324',19);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(2004,'Daewoo Magnus','WAUDGBFL3DA533600',17);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(2012,'Range Rover','WA19FAFL9DA687258',18);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(2011,'Camaro','YV4852CT3A1531336',10);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(1998,'GS','2T1KE4EE1AC040892',2);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(2008,'E-Series','ML32A3HJ0FH794287',6);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(2007,'LaCrosse','SCFAD02A68G234548',8);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(2003,'Silverado','WBAEB53549C049876',13);
INSERT INTO carmodel (relyr,model,vin,br_id) VALUES	(2011,'M3','1G4HR54K54U025438',11);

insert into caropt (ve_id, opt_name, price) values (1, 'homelink', 0.2922246571);
insert into caropt (ve_id, opt_name, price) values (2, 'homelink', 1.2956600976);
insert into caropt (ve_id, opt_name, price) values (3, 'homelink', 0.981184986);
insert into caropt (ve_id, opt_name, price) values (4, 'sunroof', 0.2512545687);
insert into caropt (ve_id, opt_name, price) values (5, 'sunroof', 0.0719707601);
insert into caropt (ve_id, opt_name, price) values (6, 'sport seats', 0.4929077309);
insert into caropt (ve_id, opt_name, price) values (7, 'sunroof', 3.6506379595);
insert into caropt (ve_id, opt_name, price) values (8, 'sport seats', 0.4445703603);
insert into caropt (ve_id, opt_name, price) values (9, 'black leather', 0.873654416);
insert into caropt (ve_id, opt_name, price) values (10, 'sport seats', 3.2887471342);
insert into caropt (ve_id, opt_name, price) values (11, 'red leather', 0.3413242965);
insert into caropt (ve_id, opt_name, price) values (12, 'lane change assist', 0.8604443197);
insert into caropt (ve_id, opt_name, price) values (13, 'red leather', 2.2851503713);
insert into caropt (ve_id, opt_name, price) values (14, 'black leather', 0.6246862105);
insert into caropt (ve_id, opt_name, price) values (15, 'sport seats', 0.4869669378);
insert into caropt (ve_id, opt_name, price) values (16, 'sunroof', 0.230966934);
insert into caropt (ve_id, opt_name, price) values (17, 'black leather', 4.3246055658);
insert into caropt (ve_id, opt_name, price) values (18, 'lane change assist', 0.7247163969);
insert into caropt (ve_id, opt_name, price) values (19, 'red leather', 3.6658935067);
insert into caropt (ve_id, opt_name, price) values (20, 'sunroof', 0.1430745956);

insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000021', 'Ashlan', 'Vinsen', 'Passos');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000022', 'Lulu', 'Roughley', 'Yuncao');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000023', 'Rosemarie', 'Sidgwick', 'Starcevica');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000024', 'Rowena', 'Yankishin', 'Perbaungan');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000025', 'Shana', 'Tregidgo', 'Hasaki');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000026', 'Brandi', 'Lukock', 'Ōzu');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000027', 'Blondell', 'Behninck', 'Chantepie');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000028', 'Heidi', 'Kelemen', 'Leiden');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000029', 'Johannes', 'Laetham', 'Cabañas');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000030', 'Willetta', 'M''Quhan', 'Andorinha');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000031', 'Lezley', 'Gooders', 'Xiagong');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000032', 'Pavla', 'Broschek', 'Rovensko pod Troskami');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000033', 'Gordy', 'Rillett', 'Chigorodó');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000034', 'Horst', 'Cossem', 'Francisco I Madero');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000035', 'Annadiane', 'Spaughton', 'Slobodnica');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000036', 'Quint', 'Kiefer', 'Gravatá');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000037', 'Babbie', 'Temperton', 'Dogondoutchi');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000038', 'Quent', 'Eckels', 'Palmira');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000039', 'Emmett', 'Robinson', 'Orlando');
insert into dealer (dea_phone, dea_firstnm, dea_lastnm, dea_location) values ('0000000040', 'Donavon', 'Hopfer', 'Urdaneta');

insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (1, '0000000001', 'Carina', 'Elloit', 'Bigender');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (2, '0000000002', 'Lynda', 'Twiddle',  'Female');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (3, '0000000003', 'Johnathon', 'Oliveto',  'Male');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (4, '0000000004', 'Nikolaus', 'Kaspar',  'Male');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (5, '0000000005', 'Elston', 'Paradyce',  'Male');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (6, '0000000006', 'Charisse', 'Jiracek',  'Female');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (7, '0000000007', 'Justus', 'Steere',  'Male');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (8, '0000000008', 'Bay', 'Cesco',  'Male');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (9, '0000000009', 'Sapphira', 'Midner',  'Female');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (10, '0000000010', 'Gloria', 'Peerman',  'Female');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (11, '0000000011', 'Angeli', 'Foxten',  'Male');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (12, '0000000012', 'Allister', 'Andriesse',  'Male');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (13, '0000000013', 'Gary', 'Hindenberger',  'Male');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (14, '0000000014', 'Vonni', 'Tomek',  'Female');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (15, '0000000015', 'Joanna', 'Mainland',  'Female');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (16, '0000000016', 'Justinian', 'Secker',  'Male');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (17, '0000000017', 'Antonius', 'Gallanders',  'Male');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (18, '0000000018', 'Eduino', 'Cottier',  'Male');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (19, '0000000019', 'Malvin', 'Swannack',  'Male');
insert into customer (dea_id, cust_phone, cust_firstnm, cust_lastnm,  gender) values (20, '0000000020', 'Edythe', 'Harmon',  'Female');

INSERT INTO inventory (ve_id, dea_id, c_id) VALUES 	(1,1,3);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES	(2,2,2);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES	(3,3,1);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES	(4,4,6);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES	(5,5,4);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES	(6,6,5);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES	(7,7,7);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES	(8,8,8);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES	(9,9,9);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES	(10,10,10);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES	(11,11,11);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES	(12,12,12);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES	(13,13,13);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES	(14,14,14);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES	(15,15,15);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES 	(16,16,16);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES	(17,17,17);
INSERT INTO inventory (ve_id, dea_id, c_id)VALUES	(18,18,18);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES	(19,19,19);
INSERT INTO inventory (ve_id, dea_id, c_id) VALUES	(20,20,20);
/*END OF DATA ARGUMENTS */
/*ALL SELECT DATA ARGUMENTS TO VIEW DATA IN TABLES */
SELECT * FROM inventory;
SELECT * FROM brand;	
SELECT * FROM customer;
SELECT * FROM dealer;
SELECT * FROM caropt;
SELECT * FROM carmodel;
SELECT * FROM vehicle;

SELECT * FROM brand;
SELECT vehicle.ve_id, vehicle.model, vehicle.br_id = 3 FROM vehicle JOIN brand;
SELECT ve_id=3, price FROM vehicle;
SHOW TABLES;