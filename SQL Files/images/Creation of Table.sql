CREATE TABLE IF NOT EXISTS mdata(
    Serial_No INT PRIMARY KEY,
    ID VARCHAR(55) NOT NULL,
    Price_Max DECIMAL(10, 2) NOT NULL,
    Price_Min DECIMAL(10, 2) NOT NULL,
    Availability VARCHAR(15) NOT NULL,
    Product_Condition VARCHAR(55) NOT NULL,
    Currency VARCHAR(10) NOT NULL,
    Price_Date_Seen DATE NOT NULL,
    Shipping VARCHAR(255) NOT NULL,
    Merchant VARCHAR(255) NOT NULL,
    Asins VARCHAR(255),
    Brand VARCHAR(255) NOT NULL,
    Categories VARCHAR(255) NOT NULL,
    Date_Added DATE NOT NULL,
    Date_Updated DATE NOT NULL,
    ean VARCHAR(20),
	Manufacturer VARCHAR(255),
    Manufacturer_Number VARCHAR(50),
    Name VARCHAR(255) NOT NULL,
    Primary_Category VARCHAR(255) NOT NULL
    );
SELECT *
FROM mdata;

