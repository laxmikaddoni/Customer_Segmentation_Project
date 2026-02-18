CREATE DATABASE customer_segmentation;

USE customer_segmentation;

CREATE TABLE customer_data (
    Customer_ID INT,
    Age INT,
    Gender VARCHAR(10),
    Item_Purchased VARCHAR(50),
    Category VARCHAR(50),
    Purchase_Amount_USD FLOAT,
    Location VARCHAR(50),
    Size VARCHAR(10),
    Color VARCHAR(20),
    Season VARCHAR(20),
    Review_Rating FLOAT,
    Subscription_Status VARCHAR(5),
    Shipping_Type VARCHAR(30),
    Discount_Applied VARCHAR(5),
    Promo_Code_Used VARCHAR(5),
    Previous_Purchases INT,
    Payment_Method VARCHAR(30),
    Frequency_of_Purchases VARCHAR(20)
);

show tables;

select * from std;

SELECT * FROM std LIMIT 5;

SELECT COUNT(*) FROM std;

DESCRIBE std;

SELECT 
    COUNT(*) - COUNT(Age) AS Age_Nulls,
    COUNT(*) - COUNT(Gender) AS Gender_Nulls,
    COUNT(*) - COUNT(PurchaseAmountUSD) AS Amount_Nulls
FROM std;

SELECT Category, COUNT(*) 
FROM std
GROUP BY Category;

SELECT Age, AVG(PurchaseAmountUSD)
FROM std
GROUP BY Age;

SELECT Season, SUM(PurchaseAmountUSD)
FROM std
GROUP BY Season;

SELECT DiscountApplied, AVG(PurchaseAmountUSD)
FROM std
GROUP BY DiscountApplied;


SELECT Category, COUNT(*) AS total_purchases
FROM std
GROUP BY Category
ORDER BY total_purchases DESC;


SELECT Category, DiscountApplied, COUNT(*) AS discount_count
FROM std
GROUP BY Category, DiscountApplied;

SELECT Category, AVG(PurchaseAmountUSD) AS avg_sales
FROM std
GROUP BY Category
ORDER BY avg_sales ASC;

SELECT Age, AVG(PurchaseAmountUSD) AS Avg_Spending
FROM std
WHERE PaymentMethod = ('Credit Card')
GROUP BY Age;

SELECT Season, AVG(PurchaseAmountUSD) AS Avg_Spending
FROM std
WHERE PaymentMethod = ('Credit Card')
GROUP BY Season;

SELECT Location, AVG(PurchaseAmountUSD) AS Avg_Spending
FROM std
WHERE PaymentMethod = ('Credit Card')
GROUP BY Location;













