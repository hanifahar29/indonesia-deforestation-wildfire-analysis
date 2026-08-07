# Project Scope: Indonesia Deforestation & Wildfire Analysis (2001–2024)

## Background / Purpose
According to reports from [Global Forest Watch](https://www.globalforestwatch.org/) and the [World Resources Institute (WRI)](https://www.wri.org/initiatives/global-forest-watch), Indonesia has experienced significant forest loss and recurring wildfire incidents over the past two decades. These environmental challenges contribute to biodiversity decline, increased carbon emissions, and ecosystem degradation.

This project aims to perform an end-to-end environmental data analysis by integrating deforestation data from [Global Forest Watch](https://www.globalforestwatch.org/) and wildfire hotspot data from [NASA FIRMS MODIS](https://firms.modaps.eosdis.nasa.gov/).

The project demonstrates a complete data analytics workflow using Excel, SQL, Python, and Power BI to analyze long-term environmental trends, geographic hotspots, and environmental impacts across Indonesia.

Sources:
- [Global Forest Watch Indonesia Dashboard](https://www.globalforestwatch.org/dashboards/country/IDN/)
- [NASA FIRMS MODIS Fire Data](https://firms.modaps.eosdis.nasa.gov/)

---

# Goals
- Analyze long-term forest loss trends in Indonesia
- Identify provinces with the highest deforestation activity
- Analyze wildfire hotspot trends and fire severity over time
- Evaluate the relationship between deforestation and wildfire activity
- Explore how forest loss and wildfire activity relate to carbon emissions
- Build an interactive dashboard for environmental insights and storytelling

---

# Business Questions

## 1. Deforestation Analysis
- How has forest loss changed in Indonesia from 2001–2024?
- Which provinces experienced the highest forest loss?
- What are the trends of primary forest loss over time?
- Which years recorded the most severe deforestation activity?

---

## 2. Wildfire Hotspot Analysis
- How has wildfire hotspot activity changed over time?
- Which regions recorded the highest number of wildfire hotspots?
- What seasonal wildfire patterns can be observed?
- How severe were wildfire incidents based on Fire Radiative Power (FRP)?

---

## 3. Environmental Impact Analysis
- Is there a relationship between forest loss and wildfire activity?
- How do forest loss and wildfire trends relate to carbon emissions?
- Which provinces show the highest combined environmental risk?

---

# Scope

| Area | Description |
|---|---|
| Deforestation Analysis | Analysis of forest loss and primary forest loss trends |
| Wildfire Analysis | Analysis of wildfire hotspot activity and fire severity |
| Environmental Impact | Analysis of relationships between forest loss, wildfire activity, and carbon emissions |
| Geographic Analysis | Geographic analysis of forest loss at the provincial level and wildfire hotspot distribution across Indonesia |
| Dashboard Visualization | Interactive environmental dashboard and storytelling |

---

# Out of Scope
- Real-time wildfire monitoring
- Satellite image processing and remote sensing modeling
- Machine learning or predictive forecasting
- Climate simulation modeling
- Economic and policy impact assessment
- Biodiversity and wildlife habitat modeling

---

# Deliverables

| Deliverable | Description |
|---|---|
| `01_schema_definition.sql` | Database schema creation and constraints |
| `erd_environmental_analysis.pgerd` | Entity Relationship Diagram (ERD) |
| `02_data_cleaning.sql` | SQL queries for data cleaning and validation |
| `03_deforestation_analysis.sql` | SQL analysis for forest loss trends |
| `04_wildfire_analysis.sql` | SQL analysis for wildfire hotspot trends |
| `05_environmental_impact_analysis.sql` | SQL analysis for integrated environmental analysis |
| `wildfire_hotspot_cleaned.csv` | Cleaned wildfire hotspot dataset |
| `forest_loss_cleaned.csv` | Cleaned deforestation dataset |
| `environmental_analysis.ipynb` | Python notebook for EDA and data processing |
| `indonesia_environment_dashboard.pbix` | Interactive Power BI dashboard |
| `README.md` | Project documentation, findings, and insights |

---

# Tools & Technologies

| Tool | Purpose |
|---|---|
| Excel | Initial data cleaning and validation |
| PostgreSQL | Database management and SQL querying |
| pgAdmin | ERD design and database administration |
| Python (Pandas, Matplotlib) | Data cleaning, EDA, and analysis |
| Power BI | Interactive dashboard and visualization |
| GitHub | Version control and project documentation |

---

# Data Sources

| Dataset | Source |
|---|---|
| Indonesia Forest Loss Data | [Global Forest Watch](https://www.globalforestwatch.org/) |
| Wildfire Hotspot Data (MODIS) | [NASA FIRMS](https://firms.modaps.eosdis.nasa.gov/) |
| Carbon Emission Data | [Global Forest Watch](https://www.globalforestwatch.org/) |

---

# Project Milestone

| Milestone | Description | Status |
|---|---|---|
| Project Scope | Define project objectives and business questions | ✅ Done |
| Data Collection | Collect datasets from Global Forest Watch and NASA FIRMS | ✅ Done |
| Data Cleaning | Clean and validate environmental datasets | ✅ Done |
| Data Preparation | Merge and organize environmental datasets using Python | ✅ Done |
| Database Schema & ERD | Build schema and entity relationship diagram | ✅ Done |
| Deforestation Analysis | Analyze forest loss trends and patterns | ✅ Done|
| Wildfire Analysis | Analyze wildfire hotspot activity | ✅ Done |
| Environmental Impact Analysis | Analyze relationships between datasets |✅ Done |
| Power BI Dashboard | Build interactive environmental dashboard | ⬜ Pending |
| Final Documentation | Create README with findings and conclusions | ⬜ Pending |

---

# Role
Data Analyst: Hanifah Arrasyidah

Domain: Environmental Analytics / Sustainability / Climate & Forestry Analysis