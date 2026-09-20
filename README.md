# Module 16: Transit Data and APIs

## Overview

Module 16 focused on building a complete transit data application using modern data engineering tools and techniques. The module introduced the process of collecting real-time transit data from the Massachusetts Bay Transportation Authority (MBTA) API, storing the data in relational and NoSQL databases, visualizing vehicle locations on a map, implementing Change Data Capture (CDC), and analyzing collected data using Jupyter Notebooks.

The module emphasized the integration of multiple technologies into a single end-to-end data pipeline.

---

# Learning Objectives

By completing this module, I learned how to:

- Work with REST APIs and JSON data.
- Collect real-time transit data from the MBTA API.
- Design and create MySQL database schemas.
- Build and manage Docker containers and Docker networks.
- Store and query data using MySQL and MongoDB.
- Visualize location-based data using Mapbox.
- Build a Flask-based web application.
- Implement Change Data Capture (CDC) using Debezium.
- Monitor data changes and propagate updates between systems.
- Use Maven for Java dependency management.
- Analyze historical transit data using Pandas and Jupyter Notebooks.

---

# Key Concepts

## MBTA API

The MBTA API provides real-time access to:

- Vehicle locations
- Trip information
- Schedules
- Alerts
- Route data

Example endpoint:

```text
https://api-v3.mbta.com/vehicles?filter[route]=1&include=trip
```

---

## Transit Data Applications

Transit data applications collect, process, visualize, and analyze transportation data.

Examples include:

- Google Maps
- Uber
- Lyft
- Transit Apps
- Fleet Tracking Applications

---

## Mapbox

Mapbox is a JavaScript web mapping library used to create custom maps and display geospatial information.

Features include:

- Markers
- Layers
- Styles
- Interactive maps
- Geospatial visualization

---

## Docker

Docker was used to containerize the application components.

Containers created during the project:

### MySQL

```text
mysqlserver
```

### MongoDB

```text
some-mongo
```

### Debezium CDC

```text
debeziumcdc
```

### Java/Maven

```text
javamaven
```

All containers were connected using:

```text
MBTANetwork
```

---

## MySQL

The MySQL database stored transit information collected from the MBTA API.

Table:

```sql
mbta_buses
```

Selected fields:

- id
- latitude
- longitude
- bearing
- current_status
- current_stop_sequence
- direction_id
- label
- occupancy_status
- revenue
- speed
- updated_at

---

## MongoDB

MongoDB served as the target database for CDC processing.

Database:

```text
myDatabase
```

Collection:

```text
myCollection
```

MongoDB stored changes detected by Debezium from the MySQL database.

---

## Debezium CDC

Debezium monitored MySQL database changes and propagated records into MongoDB.

Benefits:

- Real-time synchronization
- Data replication
- Change Data Capture (CDC)
- Event-driven data architecture

---

## Maven

Apache Maven was used to:

- Build Java projects
- Manage dependencies
- Execute Java applications

Common commands:

```bash
mvn spring-boot:run
```

```bash
mvn compile exec:java
```

---

## Flask

Flask was used to create a lightweight web application.

Responsibilities:

- Call the MBTA API
- Persist data into MySQL
- Provide data services to the frontend

---

## Map Visualization

The Flask application used:

```text
http://localhost:3000
```

to display:

- Bus positions
- Route information
- Interactive Mapbox visualizations

---

# Project 16.1 Summary

## Objective

Build a complete transit data pipeline that:

1. Collects MBTA Route 1 data.
2. Stores data in MySQL.
3. Captures changes through Debezium.
4. Replicates data to MongoDB.
5. Displays locations using Mapbox.
6. Analyzes collected data.

---

## Project Components

### Data Collection

```text
MBTA API
```

↓

### Data Storage

```text
MySQL
```

↓

### Change Data Capture

```text
Debezium CDC
```

↓

### NoSQL Storage

```text
MongoDB
```

↓

### Visualization

```text
Flask + Mapbox
```

↓

### Analysis

```text
Jupyter Notebook
```

---

# Jupyter Notebook Analysis

The collected transit data was analyzed to answer three questions:

## Question 1

### Average Route Completion Time

Result:

```text
339.80 minutes
```

Approximately:

```text
5.66 hours
```

---

## Question 2

### Visualization

A histogram was created to show:

```text
Distribution of Current Stop Sequence
```

The chart illustrated the frequency of observations across Route 1 stop sequences.

---

## Question 3

### Haversine Speed Estimate

Results:

```text
Distance: 3.74 miles
Estimated Speed: 3.24 mph
```

The analysis used the Haversine formula to calculate the distance between two sets of latitude and longitude coordinates and estimate average travel speed.

---

# Skills Gained

Through this module I gained practical experience with:

- Docker Networking
- REST APIs
- JSON Parsing
- MySQL
- MongoDB
- Debezium CDC
- Flask Development
- Mapbox Visualization
- Java and Maven
- Data Collection Pipelines
- Data Replication
- Jupyter Notebooks
- Pandas Data Analysis
- Geospatial Calculations

---

# Key Takeaways

- APIs are critical sources of real-time data.
- Docker simplifies application deployment and integration.
- Change Data Capture enables event-driven architectures.
- Visualization tools help communicate operational insights.
- Jupyter Notebooks provide an effective environment for data exploration and analysis.
- End-to-end projects offer valuable experience integrating multiple technologies into a complete data engineering solution.

---

# Resources

### MBTA API

https://www.mbta.com/developers/v3-api

### MBTA Swagger Documentation

https://api-v3.mbta.com/docs/swagger/index.html

### Mapbox

https://www.mapbox.com/

### Docker

https://www.docker.com/

### MongoDB

https://www.mongodb.com/

### Debezium

https://debezium.io/

### Apache Maven

https://maven.apache.org/

---

# Module Completion

✅ MBTA API Integration

✅ MySQL Database

✅ MongoDB Database

✅ Flask Web Server

✅ Mapbox Visualization

✅ Docker Containers & Networking

✅ Debezium CDC

✅ MongoDB Verification

✅ Jupyter Notebook Analysis

✅ Transit Data Application Project