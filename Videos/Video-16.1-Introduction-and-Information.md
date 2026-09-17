# Video 16.1: Introduction and Information

## Module 16: Transit Data and APIs

**Duration:** 04:30

---

## Overview

Module 16 focuses on building a transit data application using real-world transit data from the Massachusetts Bay Transportation Authority (MBTA).

This module serves as a capstone-style project that combines concepts learned throughout the MIT Professional Certificate in Data Engineering program, including:

- APIs
- Flask web applications
- MySQL databases
- MongoDB
- Docker containers
- Change Data Capture (CDC)
- Data analysis
- Client-server architecture

---

## Project 16.1 Overview

The goal of Project 16.1 is to build a transit data application that tracks MBTA Route 1 buses using real-time transit data.

The project consists of four major stages:

### 1. Retrieve Transit Data

Use the MBTA API to obtain:

- Bus locations
- Longitude and latitude coordinates
- Route information

This introduces working with real-time data from an external API.

---

### 2. Store Data in MySQL

Create a MySQL database to store information collected from the MBTA API.

Process:

```text
MBTA API
    ↓
Python Application
    ↓
MySQL Database
```

Tasks include:

- Parsing JSON responses
- Creating database tables
- Inserting transit records
- Building a historical dataset

---

### 3. Implement Change Data Capture (CDC)

Use Debezium to monitor changes made to the MySQL database and replicate those changes to MongoDB.

Process:

```text
MySQL
    ↓
Debezium
    ↓
MongoDB
```

Concepts reinforced:

- Change Data Capture (CDC)
- Database replication
- Event-driven architectures
- Data synchronization

---

### 4. Analyze Transit Data

After collecting approximately 12 hours of transit data:

- Query historical records
- Identify trends
- Discover patterns
- Generate insights

Examples:

- Bus movement patterns
- Frequency of location updates
- Route utilization
- Transit activity trends

---

## New Tools Introduced

### Curl

Command-line utility used to transfer data to or from a server.

Example:

```bash
curl https://api-v3.mbta.com/vehicles
```

Uses:

- API testing
- Retrieving JSON responses
- Troubleshooting web services

---

### Mapbox

A mapping platform used for location-based applications.

Capabilities:

- Interactive maps
- Geospatial visualization
- Real-time location tracking
- Route visualization

---

### Maven

Java dependency and project management tool.

Uses:

- Managing libraries
- Building Java applications
- Automating project builds

---

## Review of Previous Modules

Dr. Sanchez reviews concepts learned throughout the program that are required for this project.

### Databases

- Relational databases
- NoSQL databases
- Data persistence
- SQL

### Containers

Running services inside Docker containers, including:

- MySQL
- MongoDB
- Debezium

### Programming Languages

Skills used throughout the project:

- Python
- SQL
- Java
- JavaScript

### Change Data Capture (CDC)

Purpose:

- Detect changes in source databases
- Replicate updates
- Keep multiple systems synchronized

---

## Client-Server Architecture

The transit application follows a client-server model.

```text
Client
    ↓ Request
Server/API
    ↓ Response
Application
    ↓
Database
```

The application periodically calls the MBTA API to retrieve updated bus locations and store that information for later analysis.

---

## Data Engineering Pipeline

The overall project architecture can be viewed as a complete data engineering pipeline:

```text
MBTA API
    ↓
Python
    ↓
Flask
    ↓
MySQL
    ↓
Debezium CDC
    ↓
MongoDB
    ↓
Analytics
```

This mirrors real-world data engineering systems that:

1. Ingest data from external sources
2. Store data in operational databases
3. Replicate changes through CDC
4. Analyze data to generate business insights

---

## Learning Outcomes

By the end of Module 16, you should be able to:

1. Describe use cases of location-based applications.
2. Identify web development tools used in application development.
3. Understand key Mapbox capabilities.
4. Build a transit data application.
5. Consume and process API data.
6. Implement CDC workflows.
7. Analyze collected transit data.

---

## Key Takeaways

- Module 16 is a portfolio-focused project.
- Real-time transit data is collected from the MBTA API.
- Transit data is stored in MySQL.
- Debezium is used to replicate changes from MySQL to MongoDB.
- Data analysis is performed on collected transit records.
- New technologies introduced include Curl, Mapbox, and Maven.
- The project combines API integration, databases, CDC, and analytics into an end-to-end data engineering solution.

---

## Connections to Previous Work

This module reinforces many concepts used in modern data platforms:

- API Integration
- Data Pipelines
- Relational Databases
- NoSQL Databases
- Containerization
- Change Data Capture
- Data Analytics
- Location-Based Services

The transit application serves as a practical example of building an end-to-end data engineering workflow using real-world data.