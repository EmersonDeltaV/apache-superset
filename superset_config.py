import os

# Superset configuration file

# SQLAlchemy connection string for your database
SQLALCHEMY_DATABASE_URI = os.getenv('SQLALCHEMY_DATABASE_URI', 'sqlite:////app/superset.db')

# Secret key for session management
SECRET_KEY = os.getenv('SECRET_KEY', 'default_secret_key')

# Rate limit storage URI
RATELIMIT_STORAGE_URI = os.getenv('RATELIMIT_STORAGE_URI', 'redis://localhost:6379/0')

# Additional configuration options can be added here