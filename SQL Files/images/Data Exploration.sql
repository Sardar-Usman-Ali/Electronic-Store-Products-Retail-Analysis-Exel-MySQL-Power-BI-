SELECT *
FROM mdata;
/*
In this file we will be exploring the data by answering potential questions
The questions will be intended to explore relation between different
attributes of the product to discover better pricing strategy and RetaiL Analysis.
/*


-- How does the Condition of the Product affect the pricing of that product?

SELECT Product_Condition, AVG(Price_Max) AS AvgPrice
FROM mdata
GROUP BY Product_Condition;

-- Is there a relation between the Price_Date_Seen of a product and its dynamic pricing across merchants?

SELECT Price_Date_Seen, AVG(Price_Max) AS AvgPrice
FROM mdata
GROUP BY Price_Date_Seen;

--What is the competitive pricing strategy for the same product from different merchants?

SELECT Name, Merchant, AVG(Price_Max) AS AvgPrice
FROM mdata
GROUP BY Name, Merchant;

--What role does a product’s category play in its listing price?

SELECT Categories, AVG(Price_Max) AS AvgPrice
FROM mdata
GROUP BY Categories;

--What is the market share percentage for each merchant based on the number of products they offer?
SELECT Merchant, 
       COUNT(*) AS ProductCount,
       COUNT(*) * 100.0 / SUM(COUNT(*)) OVER () AS MarketSharePercentage
FROM mdata
GROUP BY Merchant;

--What is the breakdown of the number of unique products and total listings within each category?
SELECT Categories, 
       COUNT(DISTINCT Name) AS UniqueProductCount,
       COUNT(*) AS TotalListingCount
FROM mdata
GROUP BY Categories;

--Who are the top  merchants with the highest average prices?

SELECT
Merchant,
AVG(Price_Max) AS Average_Price
FROM
mdata
GROUP BY 
Merchant
ORDER BY Average_Price DESC;


SELECT * 
FROM mdata;

-- Who are the top manufacturers with highest avg sale?
SELECT
    Manufacturer,
    AVG(Price_Max) AS Avg_Price
FROM
    mdata
GROUP BY
    Manufacturer
ORDER BY Avg_Price DESC;

--What is the average price trends over time for each condition?
SELECT
    Price_Date_Seen,
    Product_Condition,
    AVG(Price_Max) AS Avgerage_Price
FROM
    mdata
GROUP BY
    Price_Date_Seen, Product_Condition
ORDER BY
    Price_Date_Seen;
   
   
-- Who are the top merchants with the highest total sales value?
    SELECT
    Merchant,
    SUM(Price_Max) AS Total_Sales_Value
FROM
    mdata
GROUP BY
    Merchant
ORDER BY
    Total_Sales_Value DESC






