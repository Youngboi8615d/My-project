
--view the dataset
SELECT *
FROM fashion_products

---select distinct 
SELECT DISTINCT Product_Name
FROM fashion_products

SELECT DISTINCT Brand
FROM fashion_products

SELECT DISTINCT Category
FROM fashion_products


---selection of product name and their brand 
SELECT Product_Name,Brand
FROM fashion_products


---Count of brand category in stock
SELECT Brand,Category,COUNT(category) In_stock
FROM fashion_products
GROUP BY Brand,Category
ORDER BY In_stock DESC


---Count of category of color in stock
SELECT Category,Color,COUNT(color) count_of_color
FROM fashion_products
GROUP BY Category,Color
ORDER BY count_of_color DESC


---Number of each product available in stock
SELECT Product_Name,COUNT(Product_Name) Total_Number_in_stock
FROM fashion_products
GROUP BY Product_Name


---Count of total color size that are in store
SELECT Size,Color,COUNT(size) 'Total Number'
FROM fashion_products
GROUP BY Size,Color


---Brand category of total price in store
SELECT Brand,Category,SUM(price) 'Total price'
FROM fashion_products
GROUP BY Brand,Category


---list of Brand based on their total price in store
SELECT Brand,sum(Price) 'Total brand price'
FROM fashion_products
GROUP BY Brand
ORDER BY [Total brand price] DESC


---list of product color in store
SELECT Product_Name,Color,COUNT(color) 'count of color'
FROM fashion_products
GROUP BY Product_Name,Color


---list of product with count of size available
SELECT Product_Name,Size,COUNT(size) 'count of size'
FROM fashion_products
GROUP BY Product_Name,size


---list of each product with their size and color in total
SELECT Product_Name,Color,Size,COUNT(color) 'count of color'
FROM fashion_products
GROUP BY Product_Name,Color,Size


---customer rating on brand category
SELECT Brand,category,
	CASE
		WHEN Rating <=4 THEN 'Not Recommended'
		ELSE 'Recommended'
	END Rating_status
FROM fashion_products
GROUP BY Brand,Category,
	CASE
		WHEN Rating <=4 THEN 'Not Recommended'
		ELSE 'Recommended'
	END


---product with Nike brand available in the store
SELECT Product_Name
FROM fashion_products
WHERE Brand ='Nike'
