USE "SALESDEMO"."SALESDEMO";

CREATE TABLE ProductMaster(
products nvarchar(100) not null,
ProductsDescription varchar(100),
ProductsCategory    varchar(100),
ManufacturedCountry varchar(100),
constraint pkey_1 primary key (products)  enforced
);

CREATE TABLE CustomerMaster(
CustomerID  nvarchar(100) not null,
CustomerCity varchar(200),
Country varchar(200),
CountryCode varchar(200),
Latitude varchar(200),
Longitude varchar(200),
constraint pkey_1 primary key (CustomerID)  enforced
  );

CREATE TABLE EmployeeMaster(
EmployeeID  nvarchar(100) not null,
EmployeeFirstName varchar(200),
EmployeeSecondName varchar(200),
EmployeeGender varchar(200),
SalesXpLevel varchar(200),
constraint pkey_1 primary key (EmployeeID)  enforced
  );

CREATE TABLE SalesFact(
OrderNr nvarchar(255), 
OrderDate date,  
Products nvarchar(100),
CustomerID nvarchar(100),
EID nvarchar(100),
Ratings double,
ProductCost double,
SalePricePerPiece double,
QuantityPurchased double,
InvoiceAmount double,
CostOfGoodsAmount double,
Profit double,
Currency nvarchar(255),
constraint fkey_1 foreign key (Products) references ProductMaster (products)  enforced,
constraint fkey_2 foreign key (CustomerID) references CustomerMaster (CustomerID)  enforced,
constraint fkey_3 foreign key (EID) references EmployeeMaster (EmployeeID)  enforced  
  );