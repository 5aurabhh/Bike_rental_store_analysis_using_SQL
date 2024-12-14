# Bike_rental_store_analysis

This is a analysis project based on the bike rental store service.
The business solutions were provided to the client's issues.
Database Designing and SQL queries were used to provide business solutions.

Database Structure:-
Database Design for Bike Rental Shop
This database is designed to efficiently manage bike rentals, customers, memberships, and bike inventory. It consists of 5 tables:

customer: Stores customer information like id, name, and email.
bike: Contains details of bikes including id, model, category, pricing details (price_per_hour and price_per_day), and status.
rental: Tracks bike rentals, including customer_id, bike_id, rental start time (start_timestamp), duration (in hours), and total payment (total_paid).
membership: Manages memberships for customers, linking membership_type_id, customer_id, start_date, end_date, and total fees (total_paid).
membership_type: Defines types of memberships with fields for name, description, and price.
