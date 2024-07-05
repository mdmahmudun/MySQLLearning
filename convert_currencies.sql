USE moviesdb;
SELECT * FROM financials;
SELECT *, (revenue-budget) as profit FROM financials;


#Currency conversion
SELECT *, IF(currency = "USD", revenue*77, revenue) as revenue_inr FROM financials;


#Unit conversion
SELECT DISTINCT unit FROM financials;
SELECT *,
	CASE
			WHEN unit = "billions" THEN revenue*1000
            WHEN unit = "millions" THEN revenue
            WHEN unit = "thousands" THEN revenue/100
	END as revenue_millions
    FROM financials;
            
