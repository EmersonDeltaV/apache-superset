# Use the official Apache Superset image
FROM apache/superset:latest

# Install any additional dependencies
USER root
RUN apt-get update && \
    apt-get install -y libpq-dev gcc && \
    pip install --upgrade pip && \
    pip install psycopg2-binary redis pillow

# Copy the custom configuration file into the container
COPY superset_config.py /app/superset_config.py

# Copy the startup script into the container
COPY startup.sh /app/startup.sh
USER root
RUN chmod +x /app/startup.sh

# Set environment variables for Superset
ENV SUPERSET_CONFIG_PATH=/app/superset_config.py

# Expose the port Superset runs on
EXPOSE 8088

# Start Superset with the startup script
CMD ["/app/startup.sh"]