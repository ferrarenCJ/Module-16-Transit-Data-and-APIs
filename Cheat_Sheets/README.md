# Cheat Sheets

## Overview

This folder contains quick-reference notes and commands for the technologies used in **Module 16: Transit Data and APIs**.

The cheat sheets provide a convenient reference for common commands, syntax, troubleshooting steps, and workflows used throughout the module.

---

# Docker Cheat Sheet

## Create Network

```bash
docker network create MBTANetwork
```

## View Networks

```bash
docker network ls
```

## View Running Containers

```bash
docker ps
```

## View All Containers

```bash
docker ps -a
```

## Stop Container

```bash
docker stop <container_name>
```

## Remove Container

```bash
docker rm <container_name>
```

## Execute Shell in Container

```bash
docker exec -it <container_name> bash
```

---

# MySQL Cheat Sheet

## Connect to MySQL Container

```bash
docker exec -it mysqlserver mysql -uroot -p
```

## Show Databases

```sql
SHOW DATABASES;
```

## Use Database

```sql
USE MBTAdb;
```

## Show Tables

```sql
SHOW TABLES;
```

## View Records

```sql
SELECT *
FROM mbta_buses
LIMIT 10;
```

## Count Records

```sql
SELECT COUNT(*)
FROM mbta_buses;
```

---

# MongoDB Cheat Sheet

## Connect to MongoDB

```bash
docker exec -it some-mongo mongosh
```

## Show Databases

```javascript
sh*w dbs
```

*# Use Database

```javascript
use *yDatabase
```

## View Collections*
```javascript
show collections
``*

## Query Documents

```javascrip*
db.myCollection.find()
```

*--

# MBTA API Cheat Sheet

## Rou*e 1 Endpoint

```text
https*//api-v3.mbta.com/vehicles?filter[route]=1&include=trip
```

*# Python Example

```python
import*urllib.request
import json

with*urllib.request.urlopen(url) as res*onse:
    data*= json.loads(response.read().decod*())
```

---

# Flask Cheat Sheet
*## Start Application

```bash
pyth*n server.py
```

## Application UR*

```text
http://localhost:3000
``*

---

# Mapbox Cheat Sheet

## In*tialize Map

```javascript*mapboxgl.accessToken = 'YOUR_TOKEN*;
```

*``javascript
const map = new mapbo*gl.Map({
    container: 'map',
   *style:*'mapbox://styles/mapbox/streets-v1*'
});
```

*--

# Maven Cheat Sheet

## Run Sp*ing Boot

```bash*mvn spring-boot:run
```

*# Execute Java Class*
```bash*mvn compile exec:java \
-Dexec*mainClass="com.mongodb.quickstart.*eadCDC"
```

## Check Java Version*
```bash
java -version
```

---

#*Git Cheat Sheet

## Check Status

*``bash
git status
```

## Stage Ch*nges

```bash*git add .
```

## Commit Changes

*``bash
git commit -m "commit messa*e"
```

*# Push Changes

```bash
git push o*igin main
``*

---

* Jupyter Notebook Cheat Sheet

##*Install*Packages

```python
!pip install p*ndas pymysql matplotlib haversine
*``

## Load CSV

```python
import *andas as pd

df = pd.read_csv('mbt*.csv')
```

## View Data

```pytho*
df.head()
```

*# Data Information

```python
df.i*fo()
```

*--

# Haversine Cheat Sheet

##*Calculate*Distance

```python
from haversine*import haversine, Unit

distance =*haversine(
    (lat1, lon1),
    (*at2, lon2),
    unit=*nit.MILES
)
```

*--

# Module 16 Quick Workflow

``*text*MBTA API
    ↓
Fl*sk Application
    ↓*MySQL Database
   *↓
Debezium CDC
    ↓*MongoDB
    ↓
Jupyter*Notebook Analysis
```

---

# Key *echnologies

✅ MB*A API

✅ Docker

✅ MySQL

✅ MongoD*

✅*Debezium CDC

✅ Flask

✅ Mapbox

✅*Maven

✅ Jupyter Notebook

✅ Pand*s

✅*Haversine

---

# Purpose

These c*eat*sheets serve as a quick reference *or common commands and workflows u*ed throughout Module 16 and Projec* 16.1.