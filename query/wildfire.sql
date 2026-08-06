SELECT * FROM wildfire

/** How has wildfire activity changed over time in Indonesia? **/
SELECT
	year,
	COUNT (*) AS hotspot_count
FROM wildfire
GROUP BY year
ORDER BY year;

/** How has hotspot activity changed compared to the previous year? **/
SELECT 
	year,
	COUNT(*) AS hotspot_count,
	LAG (COUNT (*)) OVER (
		ORDER BY year
	) AS hotspot_lass_year,
	COUNT(*) - LAG (COUNT (*)) OVER (
		ORDER BY year
	) AS change_hotspot
FROM wildfire
GROUP BY year
ORDER BY year;

/** Top 5 Year with the highest hotspot count **/
SELECT
	year,
	COUNT(*) AS hotspot_count
FROM wildfire
GROUP BY year
ORDER BY hotspot_count DESC
LIMIT 5;

/** Top 5 Year with the lowest hotspot count **/
SELECT
	year,
	COUNT(*) AS hotspot_count
FROM wildfire
GROUP BY year
ORDER BY hotspot_count ASC
LIMIT 5;

/** How has fire intensity changed over time? **/
SELECT
	year,
	ROUND(AVG(frp),2) AS avg_frp
FROM wildfire
GROUP BY year;

/** How has brightness intensity change over time? **/
SELECT
	year,
	ROUND(AVG(brightness),2) AS avg_brightness
FROM wildfire
GROUP BY year;

/** Day vs Night Wildfire Detection **/
SELECT
	daynight,
	COUNT(*) AS total_daynight
FROM wildfire
GROUP BY daynight;

/** Satellite Distribution **/
SELECT
	satellite,
	COUNT(*) AS total_satellite
FROM wildfire
GROUP BY satellite;