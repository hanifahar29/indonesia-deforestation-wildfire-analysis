/** create table national deforestation**/
CREATE TABLE national_deforestation(
	country VARCHAR (20) NOT NULL,
	year INT PRIMARY KEY,
	tc_loss_ha INT NOT NULL,
	primary_loss_ha INT NOT NULL,
	gross_emissions_mg_co2e BIGINT NOT NULL
);

/** create table province deforestation**/
CREATE TABLE province_deforestation(
	country VARCHAR (20) NOT NULL,
	province VARCHAR (50) NOT NULL,
	year INT NOT NULL,
	tree_cover_loss_ha INTEGER NOT NULL,
    gross_emissions_mg_co2e BIGINT NOT NULL,
	PRIMARY KEY (province, year)
);

/** create table wildfire**/
CREATE TABLE wildfire (
    latitude DECIMAL(10,6) NOT NULL,
    longitude DECIMAL(10,6) NOT NULL,
    acq_date DATE NOT NULL,
    acq_time INTEGER NOT NULL,
    satellite VARCHAR(10) NOT NULL,
    brightness DECIMAL(5,1) NOT NULL,
    bright_t31 DECIMAL(5,1) NOT NULL,
    confidence INTEGER NOT NULL,
    frp DECIMAL(8,1) NOT NULL,
    daynight CHAR(1) NOT NULL,
    year INTEGER NOT NULL,
    month INTEGER NOT NULL
);

/** create table country drivers**/
CREATE TABLE country_drivers (
    country VARCHAR(20) NOT NULL,
    driver VARCHAR(100) NOT NULL,
    year INTEGER NOT NULL,
    tree_cover_loss_ha INTEGER NOT NULL,
    PRIMARY KEY (driver, year)
);

/** create table province drivers**/
CREATE TABLE subnational_drivers (
    country VARCHAR(20) NOT NULL,
    province VARCHAR(50) NOT NULL,
    driver VARCHAR(100) NOT NULL,
    year INTEGER NOT NULL,
    tc_loss_ha INTEGER NOT NULL,
    PRIMARY KEY (province, driver, year)
);