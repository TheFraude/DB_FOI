CREATE TABLE Company(
	ID integer PRIMARY KEY,
	NAME varchar(25),
	HQ varchar(100),
	url varchar(300)
)

create table Customer ( --User is key word reserved in postreSQL 
	EMAIL varchar(40) PRIMARY KEY,
	NAME varchar(30),
	PHONE varchar(14),
	ADDRESS varchar(200)
)

CREATE TABLE Category(
	CATEGORYID integer PRIMARY KEY,
	NAME varchar(20),
	DESCRIPTION text
)

CREATE TABLE Product(
	PRODUCTID integer PRIMARY KEY,
	NAME varchar(100) not null, --to oblige this input fill out
	PRICE float not null, -- no free product, is this charity ?
	INSTOCK integer not null default 0, --can have 0 stock if the part isn't fill out
	CATEGORYID integer,
	TYPEID integer,
	COMPANYID integer,
	FOREIGN KEY (CATEGORYID) REFERENCES Category(CATEGORYID),
 	FOREIGN KEY (TYPEID) REFERENCES TypeOfProduct(TYPEID),
	FOREIGN KEY (COMPANYID) REFERENCES Company(ID)
)

CREATE TABLE Purchase(
	PURCHASEID integer PRIMARY KEY,
	EMAIL varchar,
	PRODUCTID integer,
	PUCHASEDATE date not null,
	HOWMANY integer not null,
	FOREIGN KEY (EMAIL) REFERENCES Customer(EMAIL),
	FOREIGN KEY (PRODUCTID) REFERENCES Product(PRODUCTID)
)

create table Suplier(
	SupplierID INTEGER PRIMARY KEY,
    	Name VARCHAR(100) NOT NULL,
    	ContactInfo VARCHAR(100),
    	ProductID INTEGER, --link to the porduct because it can be the same product but the not same supplier :0
    	FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
)

CREATE TABLE TypeOfProduct(
	TYPEID integer PRIMARY KEY,
	TNAME varchar(20),
	CATEGORYID integer,
	FOREIGN KEY (CATEGORYID) REFERENCES Category(CATEGORYID)
)