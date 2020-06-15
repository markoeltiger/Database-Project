
CREATE TABLE [Customers] (
  [Customer_ID] INT NOT NULL,
  [F_name] VARCHAR(50) NOT NULL,
  [M_name] VARCHAR(50) NOT NULL,
 [L_name] VARCHAR(50) NOT NULL, 
 [email] VARCHAR(50) NOT NULL,
 [phone] VARCHAR(50) NOT NULL,
 [address] VARCHAR(50) NOT NULL,
  PRIMARY KEY ([Customer_ID])
);

CREATE TABLE [Vehicles] (
  [Plate_Number] VARCHAR NOT NULL,
  [Brand_name] VARCHAR(100),
  [Type_name] VARCHAR(50) NOT NULL,
  [Model_type] VARCHAR(50) NOT NULL,
  [Number_of_Seats] VARCHAR(50) NOT NULL,
  [Daily_price] FLOAT (50) NOT NULL,
  [Hourly_price] FLOAT (50) NOT NULL
  PRIMARY KEY ([Plate_Number])
);

CREATE TABLE [Resrvations] (
  [Reservation_ID] INT NOT NULL,
  [Reservation_Date] Date(50) NOT NULL,
  [Customer_ID] VARCHAR(100) NOT NULL,
  [Pickup_Date] Date(50) NOT NULL,
  [Return_date] DATE NOT NULL,
  PRIMARY KEY ([Reservation_ID])
);


CREATE INDEX [FK] ON  [Reservations] ([Customer_ID], [Plate_Number]);

CREATE INDEX [FK] ON  [Vehicles] ([Customer_ID], [Plate_Number]);
