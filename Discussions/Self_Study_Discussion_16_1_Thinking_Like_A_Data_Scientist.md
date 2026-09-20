# Self-Study Discussion 16.1: Thinking Like a Data Scientist

One resource that helped me significantly during this module was the **MBTA V3 API Documentation**.

**Resource:**  
https://www.mbta.com/developers/v3-api

**How it helped:**  
The MBTA API documentation helped me understand the structure of the JSON responses returned by the Route 1 vehicle endpoint. During Project 16.1, I needed to determine which fields should be stored in the MySQL database and later analyzed in the Jupyter notebook. The documentation made it much easier to identify useful fields such as `current_stop_sequence`, `latitude`, `longitude`, `bearing`, `occupancy_status`, `revenue`, and `updated_at`. It also helped me understand the relationships between vehicles, routes, and trips when parsing API responses in Python.

Another resource I found useful was the **MBTA Swagger Documentation**.

**Resource:**  
https://api-v3.mbta.com/docs/swagger/index.html

**How it helped:**  
The Swagger interface allowed me to test API requests directly in the browser and inspect the returned JSON without writing code. This was especially helpful when modifying the `MBTAApiClient.py` file and determining which additional fields should be added to the `mbta_buses` table. It also made debugging API responses much easier throughout the project.

**Additional Tip:**  
When working on the Jupyter Notebook portion of the project, export a backup of the `mbta_buses` table to a CSV file. Having a local CSV copy makes it easier to analyze data, create visualizations, and troubleshoot notebook code without repeatedly querying the database.

Overall, these resources helped me better understand REST APIs, JSON data structures, database design, and the process of collecting and analyzing transit data using Python, MySQL, MongoDB, Docker, and Jupyter Notebooks.