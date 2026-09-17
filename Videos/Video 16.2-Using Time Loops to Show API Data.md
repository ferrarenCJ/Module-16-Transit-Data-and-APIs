# Video 16.2: Using Time Loops to Show API Data

## Module 16: Transit Data and APIs

**Duration:** 05:53

---

## Overview

In this video, Dr. Sanchez demonstrates how a client-server application can periodically request data from an API. Using the MBTA API as an example, the application continuously checks for updated bus location information and displays the results.

The video also introduces the use of the `curl` command to retrieve data directly from a web API.

---

## Key Concepts

### Client-Server Architecture

The transit application follows a client-server model:

```text
Client
    ↓ Request
Server/API
    ↓ Response
Client
```

The client periodically sends requests to the server to retrieve updated transit data.

---

### Polling an API

Polling is the process of repeatedly requesting information from an API at fixed intervals.

Example workflow:

```text
Request Bus Location
        ↓
 Receive Response
        ↓
Wait for Interval
        ↓
Request Again
```

This allows applications to monitor changing data such as bus positions in near real-time.

---

## Time Loops

A time loop is used to repeatedly execute a task after a specified delay.

Typical process:

```python
while True:
    get_bus_location()
    sleep(interval)
```

Benefits:

- Automates data collection
- Continuously monitors updates
- Supports real-time dashboards
- Enables data history collection

---

## MBTA API

The MBTA API provides real-time transit information including:

- Vehicle locations
- Routes
- Stops
- Schedules

For this project, the primary focus is obtaining Route 1 bus location data.

Data returned from the API is typically formatted as JSON.

Example attributes:

- Vehicle ID
- Latitude
- Longitude
- Timestamp
- Route

---

## Using Curl

`curl` is a command-line utility used to send requests to a server and retrieve data.

Example:

```bash
curl https://api-v3.mbta.com/vehicles
```

Common uses:

- Test APIs
- View API responses
- Troubleshoot requests
- Download data

---

## API Response Format

Most modern APIs return data in JSON format.

Example structure:

```json
{
  "data": [
    {
      "id": "vehicle_1",
      "latitude": 42.35,
      "longitude": -71.06
    }
  ]
}
```

Applications can parse the JSON response and extract required fields.

---

## Project Relevance

This video introduces the foundation for Project 16.1.

The application will:

1. Call the MBTA API repeatedly.
2. Retrieve bus location data.
3. Parse JSON responses.
4. Store data in MySQL.
5. Analyze collected data over time.

Pipeline:

```text
MBTA API
    ↓
Python Client
    ↓
JSON Parsing
    ↓
Database Storage
    ↓
Analysis
```

---

## Files Used

The video provides:

- `server.py`
- `client.py`

These files demonstrate how a client and server communicate and how periodic API requests can be implemented.

---

## Key Takeaways

- APIs allow applications to retrieve real-time information.
- Client-server architecture is a common model for data exchange.
- Time loops enable periodic data collection.
- The MBTA API provides real-world transit data.
- JSON is the primary format returned by APIs.
- `curl` is a useful tool for testing and exploring APIs.
- Continuous polling forms the foundation of the transit