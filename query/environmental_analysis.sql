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
ORDER BY year;
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

SELECT * FROM wildfire

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
	CORR(total_hotspot, tc_loss_ha)
FROM(
	SELECT
		w.year,
		COUNT(*) AS total_hotspot,
		n.tc_loss_ha
	FROM wildfire w
	JOIN national_deforestation n
		ON w.year = n.year
	GROUP BY w.year, n.tc_loss_ha
)