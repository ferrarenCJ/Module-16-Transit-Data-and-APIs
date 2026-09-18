# Mini-Lesson 16.4: Performing CRUD Operations on a MongoDB Database Using Java

## Overview

This lesson demonstrates how to perform CRUD (Create, Read, Update, Delete) operations on a MongoDB database using Java and Maven.

For Project 16.1, Java is used to interact with MongoDB while Maven manages project dependencies and execution.

---

# Prerequisites

Before running Maven, verify that the `JAVA_HOME` environment variable is configured correctly.

## Windows

Check:

```cmd
echo %JAVA_HOME%
```

If not configured:

```text
System Properties
    ↓
Environment Variables
    ↓
JAVA_HOME
```

Point `JAVA_HOME` to your JDK installation directory.

Verify:

```cmd
java -version
```

---

## macOS / Linux

Check:

```bash
echo $JAVA_HOME
```

Configure if necessary:

```bash
export JAVA_HOME=$(/usr/libexec/java_home -v 17)
```

Add the command to:

```text
~/.zshrc
```

or

```text
~/.bashrc
```

Verify:

```bash
java -version
```

Ensure the Java version matches the version specified in `pom.xml`.

---

# CRUD Operations

CRUD represents the four basic database operations:

| Operation | Description |
|------------|-------------|
| Create | Insert new records |
| Read | Retrieve records |
| Update | Modify existing records |
| Delete | Remove records |

MongoDB stores data as documents within collections.

---

# Environment Setup

## Step 1: Create Docker Network

Create a shared Docker network.

```bash
docker network create MBTANetwork
```

This network allows containers to communicate with one another.

---

## Step 2: Create MongoDB Container

Launch MongoDB and connect it to the network.

```bash
docker run \
-p 27017:27017 \
--name some-mongo \
--network MBTANetwork \
-d mongo
```

Container:

```text
some-mongo
```

Port:

```text
27017
```

---

## Step 3: Create Maven Container

Launch a Maven container with Java installed.

```bash
docker run \
--name javamaven \
--network MBTANetwork \
-dti \
--rm \
-p 8080:8080 \
maven:3.6.3-openjdk-11 bash
```

Container:

```text
javamaven
```

Purpose:

- Compile Java code
- Execute Maven commands
- Run MongoDB examples

---

## Step 4: Clone Sample Repository

Download the MongoDB Java tutorial project.

```bash
git clone https://github.com/mongodb-developer/java-quick-start
```

This project contains example Java classes demonstrating MongoDB operations.

---

## Step 5: Copy Project to Container

From the parent directory:

```bash
docker cp java-quick-start javamaven:/
```

This copies the project into the Maven container.

---

## Step 6: Access Container Shell

Open the CLI inside the container.

```bash
docker exec -it javamaven bash
```

---

## Step 7: Verify Project Files

List files in the root directory.

```bash
ls /
```

Expected:

```text
java-quick-start
```

---

## Step 8: Install Nano

Install the Nano text editor.

```bash
apt update
apt install nano
```

Useful for editing source files directly inside the container.

---

# Running the Tutorial Classes

Navigate to:

```bash
cd /java-quick-start
```

---

## Hello MongoDB

Compile and execute:

```bash
mvn compile exec:java \
-Dexec.mainClass="com.mongodb.quickstart.HelloMongoDB"
```

Purpose:

- Verify Maven works
- Verify Java compilation
- Verify MongoDB driver availability

---

## Connect to MongoDB

Run:

```bash
mvn compile exec:java \
-Dexec.mainClass="com.mongodb.quickstart.Connection" \
-Dmongodb.uri="mongodb://some-mongo:27017"
```

Connection string:

```text
mongodb://some-mongo:27017
```

Notice that:

```text
some-mongo
```

is the Docker container name.

Docker networking allows containers to communicate using container names instead of IP addresses.

---

# Maven Dependency Management

The project uses Maven to automatically download required dependencies.

Workflow:

```text
pom.xml
    ↓
Maven Repository
    ↓
MongoDB Java Driver
    ↓
Application
```

This eliminates manual library downloads.

---

# MongoDB and Project 16.1

The Module 16 architecture includes:

```text
MBTA API
    ↓
Python / Flask
    ↓
MySQL
    ↓
Debezium CDC
    ↓
MongoDB
    ↓
Java Application
```

Java accesses the MongoDB database to:

- Read transit records
- Insert records
- Update documents
- Delete documents

---

# Why This Matters

This lesson demonstrates a practical multi-technology data pipeline:

```text
Transit API
    ↓
MySQL
    ↓
CDC Pipeline
    ↓
MongoDB
    ↓
Java Application
```

It combines:

- Docker
- MongoDB
- Java
- Maven
- CRUD Operations
- Change Data Capture (CDC)

These are common technologies found in modern data engineering and application development environments.

---

# Key Takeaways

- MongoDB stores data as documents.
- CRUD stands for Create, Read, Update, and Delete.
- Maven manages Java project dependencies.
- Docker containers simplify development environments.
- MongoDB runs inside a Docker container.
- Java applications connect using the MongoDB Java Driver.
- Maven automatically downloads required libraries.
- Java performs CRUD operations against MongoDB.
- These concepts support the MongoDB portion of Project 16.1.

---

# Reference

Beugnet, M. (2024).

**Getting Started with MongoDB and Java - CRUD Operations Tutorial**

https://www.mongodb.com/developer/languages/java/java-setup-crud-operations/