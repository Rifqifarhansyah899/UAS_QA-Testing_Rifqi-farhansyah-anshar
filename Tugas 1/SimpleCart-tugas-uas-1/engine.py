import os
from sqlalchemy import create_engine

# Fetch environment variables with a default value of None
USER = os.getenv("DB_USER")
PASSWORD = os.getenv("DB_PASSWORD")
HOST = "localhost"
PORT = os.getenv("DB_PORT")
DATABASE_NAME = os.getenv("DB_NAME")

# Check if any required environment variable is missing
if None in (USER, PASSWORD, PORT, DATABASE_NAME):
    raise ValueError("Semua variabel lingkungan harus diatur")

# Construct the database URI
database_uri = f'postgresql+psycopg2://{USER}:{PASSWORD}@{HOST}:{PORT}/{DATABASE_NAME}'

# Create the SQLAlchemy engine
base_engine = create_engine(database_uri)

# Now you can use 'base_engine' for database operations
