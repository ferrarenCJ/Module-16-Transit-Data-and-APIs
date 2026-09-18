# Video 16.7: Project 1 - Build a Transit Data Application

## Module 16: Transit Data and APIs

**Duration:** 02:19

---

## Overview

In this video, Dr. Sanchez provides an overview of Project 16.1 and demonstrates how the concepts learned throughout the program come together in a complete data engineering solution.

The project focuses on building a transit data application that collects, stores, replicates, visualizes, and analyzes real-world transit data from the MBTA.

---

# Project Goal

The objective is to build an end-to-end transit data platform using real-time bus location data from the MBTA API.

The project combines:

- APIs
- Python
- Flask
- MySQL
- MongoDB
- Debezium
- Docker
- Java
- Maven
- Mapbox
- Data Analytics

---

# High-Level Architecture

```text
MBTA API
    ↓
Python / Flask Application
    ↓
MySQL Database
    ↓
Debezium CDC
    ↓
MongoDB
    ↓
Java Application
    ↓
Analytics
```

---

# Component 1: MBTA API

The MBTA API provides:

- Bus locations
- Route information
- Geographic coordinates
- Real-time transit updates

Primary focus:

```text
Route 1 Bus Data
```

The application periodically retrieves transit information from the API.

---

# Component 2: Flask Application

A Flask application acts as the ingestion layer.

Responsibilities:

- Connect to the MBTA API
- Retrieve JSON data
- Parse responses
- Store data in MySQL

Workflow:

```text
MBTA API
    ↓
Flask
    ↓
MySQL
```

---

# Component 3: MySQL Database

MySQL serves as the primary operational database.

Stored data may include:

- Vehicle ID
- Route
- Latitude
- Longitude
- Timestamp

Purpose:

- Historical storage
- Data persistence
- Analysis foundation

---

# Component 4: Debezium CDC

Debezium monitors changes occurring within MySQL.

Responsibilities:

- Detect inserts
- Detect updates
- Capture database changes
- Replicate data

Workflow:

```text
MySQL
    ↓
Debezium
```

This introduces the concept of Change Data Capture (CDC).

---

# Component 5: MongoDB

Changes captured by Debezium are propagated to MongoDB.

Benefits:

- NoSQL storage
- Flexible document model
- Near real-time synchronization

Workflow:

```text
MySQL
    ↓
Debezium
    ↓
MongoDB
```

---

# Component 6: Java and Maven

Java applications connect to MongoDB.

Using Maven, developers can:

- Manage dependencies
- Build applications
- Execute MongoDB CRUD operations

Operations include:

```text
Create
Read
Update
Delete
```

---

# Component 7: Mapbox

Mapbox provides the visualization layer.

Capabilities:

- Interactive maps
- Bus location display
- Geographic visualization
- Real-time marker updates

Workflow:

```text
MBTA Data
    ↓
Coordinates
    ↓
Mapbox
    ↓
Visual Display
```

---

# Data Analysis

After the application runs for an extended period (approximately 12 hours), the collected data is analyzed.

Possible analyses:

- Bus movement trends
- Route activity patterns
- Vehicle frequency
- Transit behavior over time

This represents the final goal of the data engineering pipeline:

```text
Data Collection
    ↓
Storage
    ↓
Replication
    ↓
Analysis
    ↓
Insights
```

---

# Concepts Reinforced

This project combines skills learned throughout the MIT Professional Certificate in Data Engineering:

### APIs

- REST APIs
- JSON Data
- HTTP Requests

### Programming

- Python
- Java
- JavaScript

### Databases

- MySQL
- MongoDB

### Containers

- Docker

### Data Engineering

- Ingestion
- Storage
- CDC
- Replication
- Analytics

### Visualization

- Mapbox

---

# End-to-End Pipeline

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
Java
    ↓
Analytics
    ↓
Business Insights
```

---

# Key Takeaways

- Project 16.1 is a portfolio-quality project.
- Real-time transit data is collected from the MBTA API.
- Flask handles data ingestion.
- MySQL stores operational transit data.
- Debezium captures database changes.
- MongoDB receives replicated data.
- Java and Maven perform CRUD operations.
- Mapbox provides real-time visualization.
- Data analysis transforms raw transit data into actionable insights.
- The project represents a complete data engineering pipeline from ingestion through analytics.

---

# Portfolio Value

This project demonstrates practical experience with:

- API Integration
- Data Pipelines
- Database Design
- Change Data Capture (CDC)
- Docker Containers
- MongoDB
- MySQL
- Java Development
- Flask Applications
- Geospatial Visualization
- Analytics

It serves as one of the strongest portfolio projects in the MIT Professional Certificate in Data Engineering program because it integrates multiple technologies into a single end-to-end solution.