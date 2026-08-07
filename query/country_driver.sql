/** Country Drivers Analysis **/
SELECT * FROM country_drivers

/** Drivers overall **/
SELECT
	driver,
	SUM(tree_cover_loss_ha) AS total_loss
FROM country_drivers
GROUP BY driver
ORDER BY total_loss DESC;

/** Top 3 Drivers each year **/
WITH drivers_rank AS(
		SELECT
			year,
			driver,
			SUM(tree_cover_loss_ha) AS total_loss,
			ROW_NUMBER() OVER(
				PARTITION BY year
				ORDER BY SUM(tree_cover_loss_ha) DESC
			) AS rank_driver
		FROM country_drivers
		GROUP BY year, driver
)
SELECT
	year,
	driver,
	total_loss
FROM drivers_rank
WHERE rank_driver<=3
ORDER BY year;

/** Trend driver contribution **/
SELECT
	year,
	driver,
	SUM(tree_cover_loss_ha) AS total_loss
FROM country_drivers
GROUP BY year, driver
ORDER BY year, total_loss DESC;