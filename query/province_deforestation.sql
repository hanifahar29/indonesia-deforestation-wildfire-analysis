/** Province deforestation **/
SELECT * FROM province_deforestation
ORDER BY province ASC

/** Top 5 Province with the highest tree cover loss **/
SELECT 
	province,
	SUM(tree_cover_loss_ha) AS total_tc_loss_ha
FROM province_deforestation
GROUP BY province
ORDER BY SUM(tree_cover_loss_ha) DESC
LIMIT 5;

/** Top 5 province with the lowest tree cover loss **/
SELECT
	province,
	SUM(tree_cover_loss_ha) AS total_tc_loss_ha
FROM province_deforestation
GROUP BY province
ORDER BY SUM(tree_cover_loss_ha) ASC
LIMIT 5;

/** Trend tree cover loss per province **/
SELECT
	province,
	year,
	tree_cover_loss_ha,
	LAG(tree_cover_loss_ha) OVER (
		PARTITION BY province
		ORDER BY year
	) AS tc_last_year,
	tree_cover_loss_ha - LAG(tree_cover_loss_ha) OVER (
		PARTITION BY province
		ORDER BY year
	) AS change_ha
FROM province_deforestation
ORDER BY province, year;
 
/** Province with the highest tree cover loss each year **/
WITH province_rank AS(
	SELECT
		year,
		province,
		tree_cover_loss_ha,
		ROW_NUMBER()OVER(
			PARTITION BY year
			ORDER BY tree_cover_loss_ha DESC
		) AS pro_rank
	FROM province_deforestation
)
SELECT
	year,
	province,
	tree_cover_loss_ha,
	pro_rank
FROM province_rank
WHERE pro_rank <= 3
ORDER BY year;
	