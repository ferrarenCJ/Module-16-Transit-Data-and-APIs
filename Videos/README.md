# Videos

## Overview

This folder contains notes, summaries, transcripts, and supporting materials related to the video lessons for **Module 16: Transit Data and APIs**.

The videos introduced the concepts, tools, and technologies required to build a real-time transit data application using APIs, Docker, MySQL, MongoDB, Debezium CDC, Mapbox, Flask, and Jupyter Notebooks.

---

## Topics Covered

### Introduction to Transit Data Applications

- What transit data applications are
- Real-time transportation systems
- Location-aware services
- Transit data use cases

Examples:

- Google Maps
- Uber
- Public transit tracking applications

---

### MBTA API

Topics included:

- REST API fundamentals
- API endpoints
- JSON responses
- Query parameters
- Real-time vehicle tracking

Key endpoint:

```text
https://api-v3.mbta.com/vehicles?filter[route]=1&include=trip
```

---

### Working with JSON Data

Topics included:

- JSON structures
- Parsing API responses
- Extracting fields
- Data transformation

Common fields extracted:

- Vehicle ID
- Latitude
- Longitude
- Current Stop Sequence
- Bearing
- Status
- Updated Timestamp

---

### Mapbox

Topics included:

- Mapbox setup
- Access tokens
- Interactive maps
- Layers
- Styles
- Map markers

Applications:

- Vehicle tracking
- Route visualization
- Geospatial analysis

---

### Docker

Topics included:

- Docker images
- Docker containers
- Docker networks
- Container communication

Containers used in the project:

```text
mysqlserver
some-mongo
debeziumcdc
javamaven
```

---

### MySQL

Topics included:

- Database creation
- Table design
- Data storage
- SQL queries

Main project table:

```sql
mbta_buses
```

---

### MongoDB

Topics included:

- Collections
- Documents
- Queries
- NoSQL databases

MongoDB was used as the CDC target database.

---

### Debezium CDC

Topics included:

- Change Data Capture (CDC)
- Database monitoring
- Event-driven architecture
- Data replication

Benefits:

- Real-time synchronization
- Decoupled systems
- Stream processing

---

### Maven

Topics included:

- Java project management
- Dependencies
- POM files
- Build automation

Example commands:

```bash
mvn spring-boot:run
```

```bash
mvn compile exec:java
```

---

### Jupyter Notebooks

Topics included:

- Data extraction
- Pandas DataFrames
- CSV exports
- Data visualization
- Route analysis

Libraries used:

- pandas
- pymysql
- matplotlib
- haversine

---

## Project Connections

The video lessons directly supported:

### Project 16.1

Build a Transit Data Application

Key deliverables:

- MBTA API integration
- MySQL storage
- MongoDB CDC
- Docker networking
- Flask application
- Mapbox visualization
- Jupyter Notebook analysis

---

## Key Learning Outcomes

By completing the video lessons, I learned how to:

- Work with REST APIs
- Parse JSON data
- Store and query transit information
- Manage Docker environments
- Visualize geospatial data
- Implement CDC pipelines
- Analyze real-world transportation datasets

---

## Skills Developed

✅ REST APIs

✅ JSON Processing

✅ Docker

✅ MySQL

✅ MongoDB

✅ Debezium CDC

✅ Flask

✅ Mapbox

✅ Maven

✅ Jupyter Notebooks

✅ Data Visualization

✅ Geospatial Analysis

✅ End-to-End Data Pipelines

---

## Module Completion

The video content provided the foundation necessary to successfully complete:

- Knowledge Checks
- Discussion 16.1
- Project 16.1: Build a Transit Data Application
- Jupyter Notebook Analysis
- CDC Implementation
- Transit Data Visualization