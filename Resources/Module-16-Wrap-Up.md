# Module 16: Wrap-Up

## Overview

Module 16 focused on building a location-based transit application using real-world transit data from the Massachusetts Bay Transportation Authority (MBTA).

Throughout the module, several concepts from previous modules were integrated into a single end-to-end data engineering solution. Students learned how to collect, store, replicate, visualize, and analyze transit data using modern tools and technologies.

---

## Topics Covered

### Location-Based Applications

Location-based applications use geographic information to deliver services and insights.

Examples include:

- Navigation systems
- Ride-sharing applications
- Fleet tracking platforms
- Public transit monitoring systems

---

### APIs and Transit Data

The MBTA API provides real-time transit information such as:

- Bus locations
- Routes
- Stops
- Schedules

Students learned how to:

- Consume REST APIs
- Parse JSON responses
- Integrate external data sources into applications

---

### Curl

Curl is a command-line utility used to transfer data to and from servers.

Common uses include:

- API testing
- Downloading files
- Viewing JSON responses
- Troubleshooting HTTP requests

Example:

```bash
curl https://api-v3.mbta.com/vehicles
```

---

### Mapbox

Mapbox is a web mapping platform used to build location-aware applications.

Key capabilities include:

- Interactive maps
- Geographic visualization
- Markers
- Layers
- Vector tiles
- Camera controls

Mapbox serves as the presentation layer of the transit data application.

---

### Maven

Maven is a Java project management and dependency management tool.

Benefits:

- Automated dependency management
- Build automation
- Standardized project structure
- Simplified Java development

---

### MongoDB and CRUD Operations

MongoDB is a NoSQL document database used within the project architecture.

Students learned to perform:

- Create
- Read
- Update
- Delete

operations using Java and Maven.

---

### Change Data Capture (CDC)

Debezium is used to capture changes occurring in MySQL and propagate them to MongoDB.

Architecture:

```text
MySQL
    ↓
Debezium
    ↓
MongoDB
```

This demonstrates Change Data Capture (CDC) in a real-world application.

---

## Project 16.1 Overview

Project 16.1 requires building a transit data application that integrates all concepts covered in the module.

High-level architecture:

```text
MBTA API
    ↓
Flask Application
    ↓
MySQL
    ↓
Debezium CDC
    ↓
MongoDB
    ↓
Java + Maven
    ↓
Analytics
```

---

## Project Objectives

Students will:

1. Retrieve Route 1 bus data from the MBTA API.
2. Store transit information in MySQL.
3. Configure Debezium CDC.
4. Replicate data into MongoDB.
5. Perform CRUD operations using Java.
6. Visualize transit data using Mapbox.
7. Analyze collected transit data.

---

## Skills Reinforced

### Programming

- Python
- Java
- JavaScript

### Databases

- MySQL
- MongoDB

### APIs

- REST APIs
- JSON Processing

### Data Engineering

- Data Ingestion
- Data Storage
- Change Data Capture
- Replication
- Analytics

### Infrastructure

- Docker Containers

### Visualization

- Mapbox

---

## Key Takeaways

- Location-based applications rely on real-time geographic data.
- APIs allow applications to consume external datasets.
- Curl is useful for testing APIs and retrieving data.
- Mapbox provides powerful geospatial visualization capabilities.
- Maven simplifies Java dependency management.
- MongoDB supports document-based storage.
- Debezium enables Change Data Capture (CDC).
- Project 16.1 combines multiple technologies into a complete data engineering solution.
- The ultimate goal is to transform transit data into meaningful insights through analysis.

---

## Looking Ahead

Project 16.1 serves as a portfolio-quality project that demonstrates the ability to:

- Integrate APIs
- Build data pipelines
- Work with relational and NoSQL databases
- Implement CDC workflows
- Develop web applications
- Visualize geospatial data
- Analyze real-world datasets

This project is one of the strongest portfolio projects in the MIT Professional Certificate in Data Engineering program because it combines data ingestion, storage, replication, visualization, and analytics into a single end-to-end solution.