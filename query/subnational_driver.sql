/** subnational_driver_analysis **/
SELECT * FROM subnational_drivers

/** Driver contribution trend **/
SELECT
	year,
	province,
	driver,
	SUM(tc_loss_ha) AS total_loss
FROM subnationaL_drivers
GROUP BY year, province, driver
ORDER BY year;

/** Driver contribution overall **/
SELECT
	driver,
	SUM(tc_loss_ha) AS total_loss
FROM subnationaL_drivers
GROUP BY driver
ORDER BY total_loss;

/** Top 3 drivers each year **/
WITH rank_driver AS(
	SELECT 
		year, 
		province,
		driver,
		SUM(tc_loss_ha) AS total_loss,
		ROW_NUMBER() OVER(
			PARTITION BY year
			ORDER BY SUM(tc_loss_ha) DESC
		) AS no_rank
	FROM subnational_drivers
	GROUP BY year, province, driver
)

SELECT
	year,
	province,
	driver,
	total_loss,
	no_rank
FROM rank_driver
WHERE no_rank <= 3
ORDER BY year, no_rank;

/** Top 3 drivers in each province **/
