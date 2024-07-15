use gold_stock_prices;
SELECT * FROM gold_stock_prices.`goldstock v1`;
SELECT * FROM gold_stock_prices.`goldstock v2`; 
-- What is the highest closing price in each dataset?
SELECT MAX(Close) AS Highest_Closing_Price FROM gold_stock_prices.`goldstock v1`;
SELECT MAX(Close) AS Highest_Closing_Price FROM gold_stock_prices.`goldstock v2`;

-- What is the average trading volume for each dataset?
SELECT AVG(VOLUME) AS AVERAGE_TRADING_VOLUME FROM gold_stock_prices.`goldstock v1`;
SELECT AVG(VOLUME) AS AVERAGE_TRADING_VOLUME FROM gold_stock_prices.`goldstock v2`;

-- Which date had the highest trading volume in each dataset?
SELECT Date, Volume FROM gold_stock_prices.`goldstock v1` ORDER BY Volume DESC LIMIT 1;
SELECT Date, Volume FROM gold_stock_prices.`goldstock v2` ORDER BY Volume DESC LIMIT 1;

-- Which date had the lowest closing price in each dataset?
SELECT DATE,CLOSE FROM gold_stock_prices.`goldstock v1`ORDER BY CLOSE LIMIT 1;
SELECT DATE,CLOSE FROM gold_stock_prices.`goldstock v2`ORDER BY CLOSE LIMIT 1;

-- What is the difference in the highest and lowest prices for each dataset?
SELECT MAX(HIGH)-MIN(LOW) AS PRICE_DIFFERNCES FROM  gold_stock_prices.`goldstock v1`;
SELECT MAX(HIGH)-MIN(LOW) AS PRICE_DIFFERNCES FROM  gold_stock_prices.`goldstock v2`;

-- List all the dates where the closing price was higher than the opening price for each dataset.
SELECT DATE FROM gold_stock_prices.`goldstock v1` WHERE  CLOSE > OPEN ;
SELECT DATE FROM gold_stock_prices.`goldstock v2` WHERE  CLOSE > OPEN ;

-- What is the total trading volume for each dataset?
SELECT SUM(VOLUME) AS TOTAL_TRADING_VOLUME FROM gold_stock_prices.`goldstock v1`;
SELECT SUM(VOLUME) AS TOTAL_TRADING_VOLUME FROM gold_stock_prices.`goldstock v2`;

-- Find the average closing price in each dataset.
SELECT AVG(CLOSE) AS AVERAGE_CLOSING_PRICE FROM gold_stock_prices.`goldstock v1`;
SELECT AVG(CLOSE) AS AVERAGE_CLOSING_PRICE FROM gold_stock_prices.`goldstock v2`;

-- Compare the highest opening price between the two datasets.
SELECT 'v1' AS Dataset, MAX(Open) AS Highest_Open
FROM gold_stock_prices.`goldstock v1`
UNION ALL
SELECT 'v2' AS Dataset, MAX(Open) AS Highest_Open
FROM gold_stock_prices.`goldstock v2`;

-- inner join
SELECT 
    v1.Date, v1.Close ,v1.Volume, v2.date,v2.close , v2.Volume 
FROM 
    gold_stock_prices.`goldstock v1`v1
INNER JOIN 
    gold_stock_prices.`goldstock v2`v2
ON 
    v1.Date = v2.Date;

-- outer join 
SELECT 
    v1.Date, v1.Close ,v1.Volume, v2.date,v2.close , v2.Volume 
FROM 
    gold_stock_prices.`goldstock v1`v1
left JOIN 
    gold_stock_prices.`goldstock v2`v2
ON 
    v1.Date = v2.Date
union 
SELECT 
    v1.Date, v1.Close ,v1.Volume, v2.date,v2.close , v2.Volume 
FROM 
    gold_stock_prices.`goldstock v1`v1
right JOIN 
    gold_stock_prices.`goldstock v2`v2
ON 
    v1.Date = v2.Date;   

-- cross join    
SELECT 
    v1.Date, v1.Close ,v1.Volume, v2.date,v2.close , v2.Volume 
FROM 
    gold_stock_prices.`goldstock v1`v1
JOIN 
    gold_stock_prices.`goldstock v2`v2
ON 
    v1.Date = v2.Date;    


