# Video 16.6: The MBTA API

## Module 16: Transit Data and APIs

**Duration:** 03:38

---

## Overview

In this video, Dr. Sanchez introduces the Massachusetts Bay Transportation Authority (MBTA) API and demonstrates how developers can use it to access real-time transit data within their applications.

The MBTA API serves as the primary data source for Project 16.1 and provides information about:

- Vehicle locations
- Routes
- Stops
- Schedules
- Transit services

---

## What is an API?

An Application Programming Interface (API) allows software applications to communicate with one another.

Workflow:

```text
Application
     ↓ Request
     API
     ↓ Response
Application
```

The MBTA API enables applications to retrieve transit information without directly accessing MBTA's internal systems.

---

## What is the MBTA API?

The MBTA API is a public REST API that provides real-time and historical transit data for the Boston public transportation system.

Available data includes:

- Bus locations
- Route information
- Vehicle details
- Stops
- Schedules
- Predictions

---

## Transit Data Application

For Project 16.1, the application focuses on:

```text
Route 1 Buses
```

The application will periodically query the MBTA API to retrieve location data for buses operating on Route 1.

Data collected includes:

- Vehicle ID
- Longitude
- Latitude
- Route information
- Timestamp

---

## API Request Process

The application follows a client-server model.

```text
Python Application
        ↓
   MBTA API
        ↓
 JSON Response
        ↓
Application Logic
```

The API returns data in JSON format.

---

## Example Workflow

### Step 1

Send a request to the MBTA API.

```text
Request Route 1 Vehicles
```

### Step 2

Receive a JSON response.

```text
Vehicle Data
Latitude
Longitude
Route
Timestamp
```

### Step 3

Parse the JSON response using Python.

### Step 4

Store the results in a database.

---

## JSON Data

MBTA API responses are returned in JSON format.

Example structure:

```json
{
  "data": [
    {
      "id": "vehicle_1",
      "latitude": 42.36,
      "longitude": -71.05
    }
  ]
}
```

Applications parse the JSON data and extract the necessary attributes.

---

## Project 16.1 Architecture

The MBTA API acts as the source system for the project.

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

---

## Why the MBTA API is Important

The API provides:

- Real-world data
- Continuously changing information
- Geographic coordinates
- Vehicle movement data

This allows students to build a realistic data engineering pipeline instead of working with static datasets.

---

## Project Deliverables Supported by the API

The MBTA API will be used to:

1. Retrieve bus location data.
2. Store transit records in MySQL.
3. Replicate changes through Debezium.
4. Populate MongoDB.
5. Analyze historical transit patterns.
6. Display buses on a Mapbox map.

---

## Data Engineering Concepts Reinforced

This lesson reinforces several concepts learned in earlier modules:

### APIs

- REST APIs
- JSON responses
- HTTP requests

### Databases

- MySQL
- MongoDB

### Data Pipelines

- Data ingestion
- Storage
- Replication
- Analysis

### Geospatial Data

- Latitude
- Longitude
- Vehicle tracking

---

## Key Takeaways

- The MBTA API provides real-time transit data.
- Route 1 bus location data is the primary dataset used in Project 16.1.
- API responses are returned in JSON format.
- Applications retrieve data by sending requests to the API.
- Transit data is stored in MySQL for later analysis.
- Debezium is used to replicate database changes to MongoDB.
- The MBTA API serves as the source system for the end-to-end data pipeline built in Module 16.

---

## Connections to Previous Modules

This video combines several concepts from earlier modules:

- Flask Web Applications
- REST APIs
- JSON Processing
- Relational Databases
- NoSQL Databases
- Docker Containers
- Change Data Capture (CDC)
- Data Analytics

The MBTA API is the foundation that powers the transit data application developed in Project 16.1.