#!/bin/bash

# Initialize Superset to set up roles and permissions
echo "Running superset init..."
superset init
echo "Done running superset init..."

# Initialize the database
echo "Running superset db upgrade..."
superset db upgrade
echo "Finished superset db upgrade."

# Create an admin user
superset fab create-admin \
    --username edge_admin \
    --firstname Edge \
    --lastname Admin \
    --email edge_admin@emerson.com \
    --password Emerson#123

# Start Superset with the correct host and port
superset run -h 0.0.0.0 -p 8088