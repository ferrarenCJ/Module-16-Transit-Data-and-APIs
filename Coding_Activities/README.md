# Coding Activities

## Overview

This folder contains coding activities completed as part of Module 16: Transit Data and APIs. The activities provided hands-on experience working with APIs, transit data, geospatial visualization, Docker containers, databases, and data analysis tools.

---

# Learning Objectives

The coding activities helped reinforce the following concepts:

- Working with REST APIs
- Parsing JSON data
- Collecting real-time transit information
- Storing data in databases
- Containerizing applications using Docker
- Visualizing location-based data
- Implementing Change Data Capture (CDC)
- Analyzing transit data using Jupyter Notebooks

---

# Topics Covered

## MBTA API

- Making API calls
- Understanding API endpoints
- Working with JSON responses
- Extracting vehicle information

### Example Endpoint

```text
https://api-v3.mbta.com/vehicles?filter[route]=1&include=trip
```

---

## Docker

Activities involving:

- Creating Docker images
- Creating Docker containers
- Building Docker networks
- Container communication

### Containers Used

```text
mysqlserver
some-mongo
debeziumcdc
javamaven
```

---

## MySQL

Activities involving:

- Database creation
- Table design
- Data insertion
- Data querying

### Main Table

```sql
mbta_buses
```

---

## MongoDB

Activities involving:

- Database creation
- Collection management
- Document storage
- Querying CDC data

---

## Flask

Activities involving:

- Building a web server
- Displaying transit data
- Integrating backend and frontend components

---

## Mapbox

Activities involving:

- Map visualization
- Location markers
- Interactive maps
- Transit vehicle tracking

---

## Debezium CDC

Activities involving:

- Monitoring database changes
- Replicating records
- Integrating MySQL and MongoDB

---

## Jupyter Notebook Analysis

Activities involving:

- Loading data from MySQL
- Working with Pandas DataFrames
- Exporting CSV files
- Creating visualizations
- Performing geospatial calculations

---

# Skills Practiced

- Python Programming
- SQL
- Docker
- MongoDB
- MySQL
- Flask
- Java
- Maven
- Mapbox
- API Integration
- Data Analysis
- Data Engineering

---

# Key Takeaways

- APIs provide access to real-time data.
- Docker simplifies application deployment.
- CDC enables data synchronization between systems.
- Geospatial tools help visualize location-based data.
- Jupyter Notebooks support data exploration and analysis.
- Modern data engineering workflows often integrate multiple technologies and platforms.

---

# Module Completion

✅ REST API Integration

✅ Docker Containers

✅ MySQL Databases

✅ MongoDB Databases

✅ Flask Applications

✅ Mapbox Visualization

✅ Debezium CDC

✅ Data Analysis

✅ Transit Data Pipeline Development