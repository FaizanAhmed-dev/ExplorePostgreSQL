# Use the official PostgreSQL image as the base image
FROM postgres:latest

# Set the PostgreSQL user and password
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD password

# Create a database named "bookstore"
ENV POSTGRES_DB explore_postgres

# Copy SQL scripts to initialize the database
COPY ./init.sql /docker-entrypoint-initdb.d/
