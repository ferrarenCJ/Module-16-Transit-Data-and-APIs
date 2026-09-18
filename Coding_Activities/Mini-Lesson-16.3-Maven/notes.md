# Mini-Lesson 16.3: Maven

## Overview

Apache Maven is a project management and build automation tool primarily used for Java applications.

Maven helps developers:

- Manage project dependencies
- Organize project structure
- Automate builds
- Compile code
- Execute tests
- Package applications

A major benefit of Maven is that it centralizes dependency management through a Project Object Model (POM) file.

---

## What is Maven?

Maven is an Apache Software Foundation project that simplifies Java development by standardizing project structure and dependency management.

Without Maven:

```text
Application
├── Dependency A
├── Dependency B
├── Dependency C
└── Manual Configuration
```

With Maven:

```text
Application
    ↓
pom.xml
    ↓
Automatic Dependency Management
```

---

## Why Maven is Useful

Maven provides:

- Consistent project organization
- Automated dependency downloads
- Version management
- Build automation
- Easier maintenance

Benefits:

- Reduces manual work
- Improves reproducibility
- Simplifies collaboration
- Minimizes configuration errors

---

## Project Object Model (POM)

Every Maven project contains a POM file.

File:

```text
pom.xml
```

The POM file defines:

- Project metadata
- Dependencies
- Plugins
- Build settings
- Version information

Example:

```xml
<project>
    <groupId>com.example</groupId>
    <artifactId>transit-app</artifactId>
    <version>1.0</version>
</project>
```

---

## Dependency Management

One of Maven's primary responsibilities is managing external libraries.

Example:

```xml
<dependency>
    <groupId>org.mongodb</groupId>
    <artifactId>mongodb-driver-sync</artifactId>
    <version>5.1.0</version>
</dependency>
```

When Maven runs:

```bash
mvn install
```

it automatically downloads required libraries.

---

## Maven Repository

Dependencies are retrieved from Maven repositories.

Workflow:

```text
pom.xml
    ↓
Maven Repository
    ↓
Download Dependency
    ↓
Add to Project
```

This eliminates manually downloading JAR files.

---

## Common Maven Commands

### Create a Project

```bash
mvn archetype:generate
```

---

### Compile Code

```bash
mvn compile
```

---

### Run Tests

```bash
mvn test
```

---

### Package Application

```bash
mvn package
```

---

### Install Dependencies

```bash
mvn install
```

---

## Maven and Project 16.1

For Project 16.1, Maven will be used to execute Java code that interacts with MongoDB.

Tasks include:

- Connecting to MongoDB
- Creating documents
- Reading documents
- Updating records
- Deleting records

CRUD operations:

```text
Create
Read
Update
Delete
```

---

## MongoDB Integration

Project architecture:

```text
MBTA API
    ↓
MySQL
    ↓
Debezium CDC
    ↓
MongoDB
    ↓
Java Application
    ↓
Maven
```

The Java application will use Maven-managed dependencies to communicate with MongoDB.

---

## Why Maven Matters

As projects become larger, managing libraries manually becomes difficult.

Maven solves this problem by:

- Tracking dependencies
- Ensuring compatible versions
- Automating builds
- Standardizing project structure

This allows developers to focus on application logic rather than configuration.

---

## Key Takeaways

- Maven is a Java project management and build automation tool.
- Maven manages dependencies through a `pom.xml` file.
- Dependencies are downloaded automatically from repositories.
- Maven standardizes project organization.
- Common commands include `compile`, `test`, `package`, and `install`.
- Project 16.1 uses Maven to execute Java code that performs CRUD operations on MongoDB.
- Maven simplifies Java development by reducing manual dependency management.

---

## Project 16.1 Connection

Maven supports the MongoDB portion of the transit data application:

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
Java + Maven
```

This demonstrates how multiple technologies can work together within a modern data engineering pipeline.

---

## Reference

Apache Maven Project.

**Maven in 5 Minutes**

https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html