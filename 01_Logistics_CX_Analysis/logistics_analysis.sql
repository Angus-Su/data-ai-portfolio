-- logistics_analysis.sql
-- Example SQL queries for the Logistics Customer Service Analysis dataset

-- 1) Category distribution and average satisfaction
SELECT Category,
       COUNT(*) AS case_count,
       ROUND(AVG(Satisfaction), 2) AS avg_satisfaction
FROM logistics_FAQ
GROUP BY Category
ORDER BY case_count DESC;

-- 2) Average handling time by warehouse
SELECT Warehouse,
       ROUND(AVG([Handling_Time(min)]), 1) AS avg_handling_minutes
FROM logistics_FAQ
GROUP BY Warehouse
ORDER BY avg_handling_minutes DESC;

-- 3) Monthly volume trend
-- (SQLite syntax; adjust date functions for other SQL engines)
SELECT strftime('%Y-%m', Date) AS month,
       COUNT(*) AS case_count,
       ROUND(AVG(Satisfaction),2) AS avg_satisfaction
FROM logistics_FAQ
GROUP BY month
ORDER BY month;

-- 4) Escalation rate by category
SELECT Category,
       ROUND(AVG(CASE WHEN Escalated='Yes' THEN 1.0 ELSE 0 END)*100, 1) AS escalation_rate_pct
FROM logistics_FAQ
GROUP BY Category
ORDER BY escalation_rate_pct DESC;

-- 5) Top subcategories by volume
SELECT Category, Subcategory,
       COUNT(*) AS case_count,
       ROUND(AVG(Satisfaction),2) AS avg_satisfaction
FROM logistics_FAQ
GROUP BY Category, Subcategory
ORDER BY case_count DESC
LIMIT 15;