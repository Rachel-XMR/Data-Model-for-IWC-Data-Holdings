
AIM:
1. Integrate heterogeneous data from multiple sources and design a unified data model and warehouse
2. Develop data pipelines and visualisation tools for easy stakeholder access and analysis
3. Identify data gaps and guide future data collection


Step:

1. ## Data collection and evaluation (**Objective 1**)
	- task:
		- [ ] Identify’ all available data sources (e.g. MySQl databases, external data sets, local databases, etc.)  
		- [ ] Evaluate data quality (integrity, consistency, format compatibility)
		- [ ] Record metadata about the data source (field descriptions, time ranges, geographical coverage, etc.)
	- deliverables:
		- [ ] Data set inventory document (with data source description and assessment report).
		- [ ] Data folder (backup of original data or link).
2. ## Data model design (**Objective 2**)
	- task:
		- [ ] Study existing data models (e.g. star schema, snowflake schema).
		- [ ] Design a unified data model that supports spatio-temporal data analysis (e.g. animal attributes, event locations, timestamps).
		- [ ] Determine data standardization rules (e.g. unit conversion, classification coding).
	- deliverables:
		- [ ]  Data model design documentation (ER diagram, field definitions, normalisation rules)
	
3. ## Data integration and pipeline development (**Objective 2**)
	- task:
		- [ ]  Develop ETL (Extract-Transform-Load) processes to cleanse and transform data.
		- [ ] Build data warehouses (e.g. using AWS Redshift, Google BigQuery or local MySQL clusters).
		- [ ] Automate data update pipelines (e.g. Airflow scheduling).
	- deliverables:
		- [ ] Data pipeline code repository (including ETL scripts).
		- [ ] Data warehouse deployment documentation.
4. ## Data Visualisation Development (**Objective 3**)
	- task:
		- [ ] Identify stakeholder needs (e.g. heat maps, time trend analysis).
		- [ ] Select tools (e.g. Tableau, Power BI, Python Dash/Plotly).
		- [ ] Develop interactive visualisations (e.g. global ship collision heat map).
	- deliverables:
		- [ ] Visualisation tools or dashboards (accessible web link or locally deployed).
		- [ ] User operating instructions.
5. ## Gap Analysis (**Objective 4**)
	- task:
		- [ ] Compare existing data with ideal coverage (spatiotemporal dimensions).
		- [ ] Identify missing regions/time periods (e.g., insufficient Southern Hemisphere data).
		- [ ] Propose priority recommendations (e.g., enhancing stranding monitoring in specific regions).
	- **Deliverables**:
	    - [ ] Gap analysis report (with map visualizations and priority recommendations).

6.  ## Documentation and Final Delivery
	- **Tasks**:
	    - [ ] Compile all deliverables (datasets, model documentation, visualization tools, gap report).
	    - [ ] Draft a final project report (technical solutions and outcomes).
	- **Deliverables**:
	    - [ ] Final project package (PDF/ZIP).



Timetable:





# Tools and Technologies

- **Data Integration**: Python (Pandas, SQLAlchemy), Apache Airflow.
- **Data Warehouse**: MySQL, PostgreSQL (for geospatial support).
- **Visualization**: Tableau (rapid development), Python Dash (customization).
- **Collaboration**: GitHub (version control), Notion (documentation).