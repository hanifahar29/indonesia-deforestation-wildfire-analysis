/** Deforestation Analysis **/
/** Forest lost analysis **/
/** Lowest tree cover loss years **/
SELECT 
	year,
	tc_loss_ha
FROM national_deforestation
ORDER BY tc_loss_ha ASC
LIMIT 1;

/** Highest tree cover loss years **/
SELECT
	year,
	tc_loss_ha
FROM national_deforestation
ORDER BY tc_loss_ha DESC
LIMIT 1;

/** Tree cover Loss Trend **/
SELECT 
	year,
	tc_loss_ha,
	LAG (tc_loss_ha) OVER (ORDER BY year) AS previous_year_loss,
	tc_loss_ha - LAG (tc_loss_ha) OVER (ORDER BY year) AS change_ha,
	ROUND(
        (tc_loss_ha - LAG(tc_loss_ha) OVER (ORDER BY year)) * 100.0
        / LAG(tc_loss_ha) OVER (ORDER BY year), 2
		) AS change_pct
FROM national_deforestation
ORDER BY year;

/** Primary Loss Analysis **/
/** Lowest primary loss years **/
SELECT 
	year,
	primary_loss_ha
FROM national_deforestation
ORDER BY year ASC
LIMIT 1;

/** Highest primary loss years **/
SELECT
	year,
	primary_loss_ha
FROM national_deforestation
ORDER BY year DESC
LIMIT 1;

/** Primary Loss Trend **/
SELECT 
	year,
	primary_loss_ha,
	LAG (primary_loss_ha) OVER (ORDER BY year) AS previous_year_loss,
	primary_loss_ha - LAG (primary_loss_ha) OVER (ORDER BY year) AS change_ha,
	ROUND(
        (primary_loss_ha - LAG(primary_loss_ha) OVER (ORDER BY year)) * 100.0
        / LAG(primary_loss_ha) OVER (ORDER BY year), 2
		) AS change_pct
FROM national_deforestation
ORDER BY year;