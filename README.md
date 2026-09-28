# apache-superset

## Important Information

This repository contains Emerson-authored deployment and integration examples for an open-source application that can run on DeltaV Edge. The application is not part of DeltaV Edge, is not required for its operation, and does not modify its functionality. All repository contents are provided as examples only. Users are responsible for securing, validating, testing, and maintaining configurations before production use.

## Relationship to DeltaV Edge

Apache Superset is an optional third-party business intelligence and data visualization platform that may be used to analyze and visualize data made available through DeltaV Edge integrations.

Apache Superset may consume data made available through DeltaV Edge integrations but is not involved in DeltaV data acquisition, DeltaV Edge contextualization, DeltaV Edge orchestration, or DeltaV Edge platform operations.

## About Apache Superset

Apache Superset is a modern, enterprise-ready business intelligence web application for data exploration and visualization. It provides a rich set of tools to transform data into interactive dashboards, reports, and visual analytics.

## Features
- **No-Code Interface**: Build charts and dashboards quickly without needing to write code.
- **Web-Based SQL Editor**: Advanced querying capabilities with a powerful SQL editor.
- **Diverse Visualizations**: Supports a wide array of visualizations, from simple bar charts to complex geospatial charts.
- **Lightweight Caching**: Configurable caching layer to enhance performance and responsiveness.
- **Extensible Security**: Highly extensible security roles and authentication options.
- **Cloud-Native Architecture**: Designed for scalability and robust performance in cloud environments.
- **Interactive Queries**: Allows interactive querying and previewing of results.

## Uses
- **Data Exploration**: Explore and visualize data from various sources.
- **Business Intelligence**: Create interactive dashboards for business insights.
- **Real-Time Analytics**: Analyze real-time data streams for immediate insights.
- **Reporting**: Generate and share detailed reports with stakeholders.
- **Geospatial Analysis**: Visualize and analyze geospatial data.
- **Data Integration**: Consolidate data from multiple sources into a single view.
- **Security Monitoring**: Monitor and control access to sensitive data.
- **Collaborative Analysis**: Facilitate collaborative data analysis and decision-making.

## Prerequisites
1. You must have Apache Superset installed from the marketplace.
2. Apache Superset needs a database URI for SQLAlchemy (one of its running libraries) as well as a rate limit storage URI. For these, PostgreSQL ([EmersonDeltaV/postgresql](https://github.com/EmersonDeltaV/postgresql)) and Redis ([EmersonDeltaV/redis](https://github.com/EmersonDeltaV/redis)) fits these URI needs respectively. Both are also available in the Edge Applications Marketplace.
3. Apache Superset also needs a secret key for security purposes. Use whatever available key generator you have.

## Apache Superset Setup
This setup example is used to visualize an SQL database available in your edge node (PostgreSQL for now). Apache Superset can be used as a visualizer and chart creator for other applications present in your edge node.

### Initial Access and Security Configuration
1. Launch the Apache Superset Web Interface: `http://{edge_ip}:8088`
   
2. **Important Security Notice**: Configure authentication credentials during installation or change them immediately on first login.
   
   - Initial credentials should be supplied via environment variables during deployment:
     - `SUPERSET_USERNAME` - Set your admin username
     - `SUPERSET_PASSWORD` - Set a secure password
   
   - For security compliance, temporary default credentials must be changed before production use.
   
   - After first login, navigate to **Settings > Security > List Users** to update credentials.

![Apache Superset Landing Page](https://github.com/EmersonDeltaV/apache-superset/blob/main/assets/login.png?raw=true)

### Connecting Databases
1. To begin, add a database to Apache Superset. In the upper right corner, click the "+" icon. Select "Data" and "Connect database" to open the interface in adding a database.  
![Apache Superset Connecting a Database](https://github.com/EmersonDeltaV/apache-superset/blob/main/assets/connect_database_1.png?raw=true)

2. Follow the onscreen instructions to add an SQL based database to query on.
![Apache Superset Connecting a Database](https://github.com/EmersonDeltaV/apache-superset/blob/main/assets/connect_database_2.png?raw=true)
![Apache Superset Connecting a Database](https://github.com/EmersonDeltaV/apache-superset/blob/main/assets/connect_database_3.png?raw=true)
![Apache Superset Connecting a Database](https://github.com/EmersonDeltaV/apache-superset/blob/main/assets/connect_database_4.png?raw=true)

3. In the uppper-left corner, select the "SQL" tab and start a query. In the "DATABASE" dropdown in the screenshow below, the database you just added should appear here, along with the schemas available on the database.
![Apache Superset Creating Queries](https://github.com/EmersonDeltaV/apache-superset/blob/main/assets/sql_queries.png?raw=true)

4. To add more databases, go to "Settings" in the upper right corner and click on "Database Connections" on the dropdown to view all active database connections as well as the option to add a new one.  
![Apache Superset Adding another Database](https://github.com/EmersonDeltaV/apache-superset/blob/main/assets/add_database.png?raw=true)

### Creating Charts and Dashboards
1. To create charts, click on the "Charts" tab on the upper left corner. Make sure to reference the database you connected to view the schemas properly.  
![Apache Superset Charts](https://github.com/EmersonDeltaV/apache-superset/blob/main/assets/chart.png?raw=true)

## Security Best Practices
- Always change default credentials on first use
- Use strong, unique passwords for admin accounts
- Configure authentication via environment variables rather than hardcoding
- Regularly review user permissions and access logs
- Keep Apache Superset updated to the latest stable version

## Changelist
- **04/22/2025** - First version.
