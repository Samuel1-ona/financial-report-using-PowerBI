SELECT * FROM financial_sample.`financial sample`;

-- To know the different segment from the dataset order by product

select f.*
FROM financial_sample.`financial sample`f
where segment = 'Small Business'
order by Product;

-- To know the different discount band from the dataset order by segment

select f.*
FROM financial_sample.`financial sample`f
where `Discount Band` =' None '
order by segment;

-- The years of sales 

select f.*
FROM financial_sample.`financial sample`f
WHERE `Year`= 2014
ORDER BY `Month Number`;

-- The max unit of the products BEGIN sold

select f.*,
max(`Units Sold`) over (ORDER BY product) as max_unit_sold
FROM financial_sample.`financial sample`f;

-- The min unit of the product begin sold

select f.*,
min(`Units Sold`) over (ORDER BY product) as min_unit_sold
FROM financial_sample.`financial sample`f;

-- The avg unit of the product begin sold

select f.*,
avg(`Units Sold`) over (ORDER BY product) as avg_unit_sold
FROM financial_sample.`financial sample`f;

-- The max gross sales from the dataset

select f.*,
max(`Gross Sales`) over (ORDER BY product) as max_gross_sales
FROM financial_sample.`financial sample`f;

-- The min gross sales from the dataset

select f.*,
min(`Gross Sales`) over (ORDER BY product) as min_gross_sales
FROM financial_sample.`financial sample`f;

-- The max discounts from the dataset

select f.*,
max(Discounts) OVER (ORDER BY product) as max_discounts
FROM financial_sample.`financial sample`f;

-- The min discounts from the dataset

select f.*,
min(Discounts) OVER (ORDER BY product) as min_discounts
FROM financial_sample.`financial sample`f;

-- The max sales form the dataset

SELECT f.*,
max(sales) OVER (ORDER BY product) as max_sales
FROM financial_sample.`financial sample`f;

-- The min sales form the dataset

SELECT f.*,
min(sales) OVER (ORDER BY product) as min_sales
FROM financial_sample.`financial sample`f;

-- The max COGS from the dataset

SELECT f.*,
max(COGS) OVER (ORDER BY product) as max_COGS
FROM financial_sample.`financial sample`f;


-- The min COGS from the dataset

SELECT f.*,
min(COGS) OVER (ORDER BY product) as min_COGS
FROM financial_sample.`financial sample`f;

-- The max profit from the dataset

SELECT f.*,
max(Profit) OVER (ORDER BY product) as max_profit
FROM financial_sample.`financial sample`f;

-- The min profit from the dataset

SELECT f.*,
min(Profit) OVER (ORDER BY product) as min_profit
FROM financial_sample.`financial sample`f;

