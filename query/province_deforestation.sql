/** Province deforestation **/
SELECT * FROM province_deforestation
ORDER BY province ASC

/** Highest tree cover loss year **/
SELECT 
	province,
	SUM(tree_cover_loss_ha) AS total_tc_loss_ha
FROM province_deforestation
GROUP BY province
ORDER BY SUM(tree_cover_loss_ha) DESC
LIMIT 5;

/** Lowest tree cover loss year **/
SELECT
	province,
	SUM(tree_cover_loss_ha) AS total_tc_loss_ha
FROM province_deforestation
GROUP BY province
ORDER BY SUM(tree_cover_loss_ha) ASC
LIMIT 5;

/

