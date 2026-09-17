# Mini-Lesson 16.2: Advanced Mapbox Capabilities

## Overview

Mapbox is a powerful web mapping platform that allows developers to create highly interactive and customizable maps within web applications.

This lesson introduces:

- Mapbox account creation
- Access tokens (JWTs)
- Styles
- Vector tiles
- Camera controls
- Layers
- Advanced map customization

> **Note:** Mapbox may request payment information during account creation. OpenStreetMap can be used as a free alternative.

---

# Getting Started with Mapbox

## Create a Mapbox Account

1. Navigate to the Mapbox website.
2. Select **Sign Up**.
3. Enter registration information.
4. Verify your email address.
5. Access your Mapbox dashboard.

Mapbox tracks API usage through your account and associated access tokens.

---

## Access Tokens

Mapbox requires an access token to authenticate API requests.

You can:

- Use the default public token
- Create a custom token for a specific application

Example:

```javascript
mapboxgl.accessToken = 'YOUR_MAPBOX_TOKEN';
```

Without a valid token, Mapbox services cannot be accessed.

---

## Required Mapbox Libraries

### JavaScript

```html
https://api.mapbox.com/mapbox-gl-js/v3.6.0/mapbox-gl.jsscript>
```

### CSS

```html
https://api.mapbox.com/mapbox-gl-js/v3.6.0/mapbox-gl.css
```

These files provide the functionality and styling needed to display Mapbox maps.

---

# Core Mapbox Components

## Styles

Styles control how a map appears.

Examples:

- Streets
- Satellite
- Dark
- Light
- Outdoors

Styles determine:

- Colors
- Labels
- Roads
- Buildings
- Waterways
- Parks

Styles can be:

- Global
- Nested
- Customized

Example:

```javascript
style: 'mapbox://styles/mapbox/streets-v11'
```

---

## Vector Tiles

Vector tiles are lightweight geospatial datasets.

They contain:

- Points
- Lines
- Polygons

Examples:

- Streets
- Parks
- Boundaries
- Buildings

Benefits:

- Fast rendering
- Small file size
- High scalability
- Dynamic styling

---

## Client-Side Rendering

Mapbox performs rendering in the browser instead of on a server.

Benefits:

- Faster interaction
- Smooth zooming
- Dynamic updates
- Better user experience

Architecture:

```text
Map Data
    ↓
Vector Tiles
    ↓
JavaScript Rendering
    ↓
Browser Display
```

---

# Camera Controls

The camera determines what users see on the map.

Think of the camera as an aerial viewpoint.

---

## Center

Defines the map's initial location.

Format:

```javascript
[longitude, latitude]
```

Example:

```javascript
center: [-74.5, 40]
```

> Longitude always comes before latitude.

---

## Zoom

Determines how far in or out the map is displayed.

Example:

```javascript
zoom: 9
```

Typical zoom levels:

| Zoom | Description |
|--------|-------------|
| 1 | World View |
| 5 | Country |
| 10 | City |
| 15+ | Street Level |

---

## Bearing

Controls map rotation.

Range:

```text
0 - 360 degrees
```

Examples:

- 0 = North
- 90 = East
- 180 = South
- 270 = West

---

## Pitch

Controls camera tilt.

Range:

```text
0 - 85 degrees
```

Examples:

- 0 = Top-down view
- 85 = Nearly horizontal

---

# Creating a Basic Map

Minimum Mapbox configuration:

```javascript
const map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/streets-v11',
  center: [-74.5, 40],
  zoom: 9
});
```

Required properties:

- Container
- Style
- Center
- Zoom

---

# Layers

Layers provide advanced customization and visualization.

Examples:

- Highlight roads
- Color parks
- Display boundaries
- Show transit routes
- Visualize geographic features

---

## Loading a Layer

Wait for the map to load:

```javascript
map.on('load', () => {
});
```

This ensures resources exist before new layers are added.

---

## Adding a Layer

Example structure:

```javascript
map.addLayer({
});
```

---

# Layer Sources

Every layer requires a source.

A source must specify:

- Type
- URL

Example:

```javascript
source: {
  type: 'vector',
  url: 'mapbox://mapbox.3o7ubwm8'
}
```

---

## Source-Layer

Source layers identify which dataset to display.

Example:

```javascript
'source-layer': 'RPD_Parks'
```

This field is commonly based on the original dataset name.

---

# Layer Styling

### Visibility

```javascript
layout: {
  visibility: 'visible'
}
```

### Color

```javascript
paint: {
  'fill-color': 'rgba(61,153,80,0.55)'
}
```

This example colors geographic features green.

---

# Example: Display Parks in Green

```javascript
map.on('load', () => {
  map.addLayer({
    id: 'rpd_parks',
    type: 'fill',

    source: {
      type: 'vector',
      url: 'mapbox://mapbox.3o7ubwm8'
    },

    'source-layer': 'RPD_Parks',

    layout: {
      visibility: 'visible'
    },

    paint: {
      'fill-color': 'rgba(61,153,80,0.55)'
    }
  });
});
```

This layer highlights park areas in green.

---

# Relevance to Project 16.1

Mapbox is the visualization component of the transit data application.

Workflow:

```text
MBTA API
    ↓
Retrieve Bus Location
    ↓
Flask Application
    ↓
Mapbox
    ↓
Display Bus Marker
```

Mapbox enables:

- Real-time bus visualization
- Interactive maps
- Geographic navigation
- User-friendly interfaces

---

# Key Takeaways

- Mapbox requires an account and access token.
- JavaScript and CSS libraries must be included in the HTML page.
- Styles determine map appearance.
- Vector tiles provide fast geospatial rendering.
- Camera controls include center, zoom, bearing, and pitch.
- Layers provide advanced map customization.
- Client-side rendering improves performance and responsiveness.
- Mapbox is the primary visualization tool used in Project 16.1.

---

# References

- Mapbox Documentation: Access Tokens
- Mapbox Documentation: Vector Tiles
- Mapbox Documentation: Sources
- Mapbox Documentation: Web Applications
- Mapbox Documentation: Bearing and Zoom Demo