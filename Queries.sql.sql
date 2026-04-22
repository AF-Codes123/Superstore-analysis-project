
# Step 1: Check Dataset
SELECT*FROM cleaned_sales limit 10;

# STEP 2: Data Understanding
SHOW COLUMNS FROM cleaned_sales;

# Step 3: Basic KPI
#...TOTAL SALES
SELECT SUM(SALES) AS TOTAL_SALES FROM cleaned_sales;

#...TOTAL PROFIT
SELECT SUM(PROFIT) AS TOTAL_PROFIT FROM cleaned_sales;

#...TOTAL ORDERS
SELECT COUNT(DISTINCT `order_id`) AS TOTAL_ORDERS
FROM cleaned_sales;

ALTER TABLE cleaned_sales        # Change Order ID into order_id
CHANGE `Order ID` order_id TEXT;

#...TOTAL QUANTITY
SELECT SUM(QUANTITY) AS TOTAL_QUANTITY FROM cleaned_sales;

#Step 4: Monthly Sales Trend
SELECT 
    MONTH(STR_TO_DATE(`Order Date`, '%Y-%m-%d')) AS Month,
    SUM(SALES) AS TOTAL_SALES
FROM cleaned_sales
GROUP BY Month
ORDER BY Month;
 
 #Step 5: category wise sales
 SELECT Category, sum(Sales) as Total_Sales
 from cleaned_sales
 group by Category
 order by Total_Sales DESC;

#step 6:Region wise sales
 SELECT Region, sum(Sales) as Total_Sales
 from cleaned_sales
 group by Region
 order by Total_Sales DESC;
 
 #Step 7: Top 10 Products
 SELECT `Product Name`, SUM(Sales) AS Total_Sales
FROM cleaned_sales
GROUP BY `Product Name`
limit 10;

#Step 8: Profit Analysis
 SELECT Category, SUM(Profit) AS Total_Profit
FROM cleaned_sales
GROUP BY Category
Order by Total_Profit desc;

#Step 9: Customer Segment Analysis
 SELECT Segment, SUM(Sales) AS Total_Sales
FROM cleaned_sales
GROUP BY Segment
Order by Total_Sales desc;
 
 #Step 10: Discount Impact
 select Discount, Sum(Profit) As Profit
 from cleaned_sales
 group by Discount
 Order by Discount;
 
 #Step 11: FINAL INSIGHTS
 # 1. Sales show an increasing trend after mid-year
 # 2. Technolgy category generates highest revenue.
 # 3. West region perform best among all regions.
 # 4. high discounts are reducing profit margin.

#Step 12: RECOMMENDATIONS
# 1. Increasing marketing in low performing areas.
# 2. Reduse excessive discounts to improve profit.




 
 
 
 
 
 
 







