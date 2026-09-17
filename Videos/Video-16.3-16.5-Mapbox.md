# Video 16.3-16.5: Mapbox

## Module 16: Transit Data and APIs

**Video 16.3 Duration:** 03:55  
**Video 16.4 Duration:** 05:53  
**Video 16.5 Duration:** 02:38

---

# Video 16.3: Mapbox - A Web Client Library

## Overview

Mapbox is a web client library that allows developers to create interactive, customizable maps within web applications.

In this module, Mapbox is used to display real-time MBTA bus locations on a map.

---

## What is Mapbox?

Mapbox is a mapping platform that provides:

- Interactive maps
- Geographic visualization
- Custom map styles
- Location tracking
- Marker placement
- Route visualization

Mapbox allows developers to integrate location-based data into web applications.

---

## Transit Data Example

Dr. Sanchez demonstrates a web application that:

1. Retrieves data from the MBTA API.
2. Extracts bus location information.
3. Displays the bus on a Mapbox map.

Workflow:

```text
MBTA API
    ↓
Get Bus Coordinates
    ↓
Mapbox
    ↓
Display Bus Location
```

---

## Location Data

Mapbox uses geographic coordinates:

- Latitude
- Longitude

Example:

```text
Latitude: 42.3601
Longitude: -71.0589
```

These coordinates determine where an object is displayed on the map.

---

# Video 16.4: Mapbox Overview

## Overview

This video provides an introduction to creating and customizing maps using Mapbox.

Developers can control:

- Zoom level
- Center position
- Map style
- Display features

---

## Core Map Components

### Access Token

Mapbox requires an access token to use its services.

Example:

```javascript
mapboxgl.accessToken = 'YOUR_TOKEN';
```

The token authenticates requests to Mapbox.

---

### Creating a Map

A map is created by specifying:

- Container
- Map style
- Center coordinates
- Zoom level

Example structure:

```javascript
const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v11',
    center: [-71.104081, 42.365554],
    zoom: 12
});
```

---

## Map Styles

Available styles include:

- Streets
- Outdoors
- Light
- Dark
- Satellite
- Satellite Streets

Example:

```javascript
style: 'mapbox://styles/mapbox/satellite-v9'
```

---

## Zoom Levels

Mapbox allows users to zoom in and out.

Examples:

| Zoom Level | Description |
|------------|-------------|
| 1 | World View |
| 5 | Country View |
| 10 | City View |
| 15+ | Street Level |

---

## Map Centering

Maps can be centered using coordinates:

```javascript
center: [-71.104081, 42.365554]
```

This determines the initial focus area displayed to users.

---

# Video 16.5: Mapbox - Adding a Marker

## Overview

Markers are used to display objects or events at specific locations on a map.

In the transit application, markers represent bus locations.

---

## Adding a Marker

Mapbox provides a marker function.

Example:

```javascript
new mapboxgl.Marker()
    .setLngLat([-71.104081, 42.365554])
    .addTo(map);
```

---

## Marker Components

A marker requires:

- Longitude
- Latitude
- Map reference

Example:

```text
Marker
    ↓
Longitude
Latitude
    ↓
Map Display
```

---

## Real-Time Bus Tracking

For Project 16.1:

1. MBTA API provides updated coordinates.
2. Coordinates are retrieved periodically.
3. Marker position updates on the map.
4. Users observe bus movement in real time.

Workflow:

```text
MBTA API
    ↓
Bus Coordinates
    ↓
Mapbox Marker
    ↓
Map Update
```

---

## Project Relevance

Mapbox serves as the visualization component of the transit application.

Responsibilities:

- Display Route 1 buses
- Show geographic locations
- Visualize movement
- Provide an interactive user interface

Overall architecture:

```text
MBTA API
    ↓
Python / Flask
    ↓
MySQL
    ↓
Mapbox
    ↓
User Interface
```

---

## Key Takeaways

- Mapbox is a web client library used to create interactive maps.
- Mapbox integrates easily with web applications.
- Geographic coordinates use latitude and longitude values.
- Maps can be customized using styles, zoom levels, and center points.
- Access tokens are required to authenticate Mapbox requests.
- Markers are used to display objects at specific locations.
- Mapbox is the primary visualization tool used in Project 16.1.
- Combining Mapbox with the MBTA API enables real-time transit tracking.

---

## Connections to Previous Modules

This lesson combines several topics learned throughout the program:

- APIs
- Web Applications
- JavaScript
- Client-Server Architecture
- Geographic Data
- Data Visualization
- Real-Time Data Processing

Mapbox acts as the presentation layer that transforms raw API data into an interactive visual experience for users.