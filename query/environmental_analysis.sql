/** Carbon Emissions Analysis **/

SELECT * FROM national_deforestation

/** Carbon emissions trend **/
SELECT
	year,
	gross_emissions_mg_co2e
FROM national_deforestation
ORDER BY year;

/** Top 5 years with highest carbon emissions **/
SELECT
	year,
	gross_emissions_mg_co2e
FROM national_deforestation
ORDER BY gross_emissions_mg_co2e DESC
LIMIT 5;

/** Forest loss, Primary Loss  vs Carbon emissions **/
SELECT
	year,
	tc_loss_ha,
	primary_loss_ha,
	gross_emissions_mg_co2e
FROM national_deforestation
ORDER BY tc_loss_ha DESC;

/** Wildfire vs Carbon emissions **/

WITH yearly_wildfire AS(
	SELECT
		year,
		COUNT(*) AS total_hotspot
	FROM wildfire
	GROUP BY year
)
SELECT
	n.year,
	n.gross_emissions_mg_co2e,
	w.total_hotspot
FROM national_deforestation n
JOIN yearly_wildfire w
	ON n.year = w.year
ORDER BY w.total_hotspot DESC;

/** Wildfire vs Forest loss **/
WITH yearly_wildfire AS(
	SELECT
		year,
		COUNT(*) AS total_hotspot
	FROM wildfire
	GROUP BY year
)

SELECT
	n.year,
	n.tc_loss_ha,
	n.primary_loss_ha,
	w.total_hotspot
FROM national_deforestation n
JOIN yearly_wildfire w 
	ON n.year = w.year
ORDER BY w.total_hotspot DESC;

/** Wildfire - Forest loss correlation **/
SELECT
	CORR(total_hotspot, tree_cover_loss_ha)
FROM(
	SELECT
		w.province,
		w.year,
		COUNT(*) AS total_hotspot,
		p.tree_cover_loss_ha
	FROM wildfire w
	JOIN province_deforestation p
		ON w.year = p.year AND w.province = p.province
	WHERE p.province IS NOT NULL
	GROUP BY w.province, w.year, p.tree_cover_loss_ha
)


SELECT * FROM province_deforestation