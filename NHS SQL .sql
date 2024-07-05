-- Code for mysql
DROP TABLE IF EXISTS location; -- drops the table if it already exists in the database
CREATE TABLE location (
	postcode varchar(11) NOT NULL, -- not null as the application requires the postcode
	latitude double NOT NULL,
	longitude double NOT NULL,
	PRIMARY KEY (postcode) -- makes postcode the primary key as you can't have 2 different locations be the same postcode
);

DROP TABLE IF EXISTS service;
CREATE TABLE service (
	name varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    postcode varchar(11) NOT NULL,
    city varchar(255),
    county varchar(255),
    number int(1) NOT NULL, 
	PRIMARY KEY (name) -- primary key is name, because no 2 places will have the same name
);

DROP TABLE IF EXISTS type;
CREATE TABLE type (
	number int(1) NOT NULL,
    service varchar(255) NOT NULL,
    PRIMARY KEY (number) -- primary key is number because multiple different services assigned to number 
);

INSERT INTO location (postcode, latitude, longitude)
VALUES 
('LL572PW', 53.209020, -4.159825),
('LL572HH', 53.227372, -4.139265),
('LL571AH', 53.229962, -4.121075),
('LL571AY', 53.231096, -4.121081),
('LL572SE', 53.234501, -4.122633);


INSERT INTO service 
VALUES 
('UPCC AT YSBYTY GWYNEDD', 'PENRHOSGARNEDD', 'LL572PW', 'BANGOR', 'GWYNEDD', 1),
('BODNANT SURGERY', 'MENAI AVENUE', 'LL572HH', 'BANGOR', 'GWYNEDD', 1),
('BRON DERW MEDICAL CENTRE', 'GLYNNE ROAD', 'LL571AH', 'BANGOR', 'GWYNEDD', 1),
('GLANFA', 'ORME ROAD', 'LL571AY', 'BANGOR', 'GWYNEDD', 1),
('DR V KURIAN\'S PRACTICE', 'BRO DAWEL GARTH ROAD', 'LL572SE', 'BANGOR', 'GWYNEDD', 1),
('BULKELEY DENTAL PRACTICE', '102 HIGH STREET', 'LL571NS', 'BANGOR', 'GWYNEDD', 2),
('ELMHURST DENTAL SURGERY', 'GARTH ROAD', 'LL571NS', 'BANGOR', 'GWYNEDD', 2),
('BETHESDA DENTAL CLINIC', 'YR HEN ORSAF MEDICAL CENTRE', 'LL571NS', 'BANGOR', 'GWYNEDD', 2),
('MOBILE DENTAL UNIT', '(BETWEEN HERGEST AND HAFAN MENAI)', 'LL571NS', 'BANGOR', 'GWYNEDD', 2),
('GWYNEDD HOSPITAL (GA)', 'YSBYTY GWYNEDD', 'LL571NS', 'BANGOR', 'GWYNEDD', 2),
('TY GLYDER', '342 HIGH STREET', 'LL571NS', 'BANGOR', 'GWYNEDD', 2),
('BANGOR EYE CARE', '222 HIGH STREET', 'LL571NY', 'BANGOR', 'GWYNEDD', 3),
('M W WILLIAMS OPTICIANS', '310 HIGH STREET', 'LL571UL', 'BANGOR', 'GWYNEDD', 3);


INSERT INTO type
VALUES 
(1, 'GP'),
(2, 'Dentist'),
(3, 'Optician');