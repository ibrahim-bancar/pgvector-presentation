# Semantic Similarity Search in PostgreSQL Using pgvector

## What is this tool?
pgvector is an open-source PostgreSQL extension that adds a vector data type and similarity search capabilities to Postgres. It allows embeddings to be stored directly in PostgreSQL tables and queried with nearest-neighbor search operators.

In this project, pgvector is used to store document embeddings and retrieve the most similar documents to a given query vector.

## Why is it useful?
pgvector is useful for:
- semantic search
- recommendation systems
- similarity matching
- embedding-aware retrieval inside PostgreSQL

It is especially valuable when a project already uses PostgreSQL and wants vector search without introducing a separate vector database.

## Course Connection
This project is related to Applied Data Engineering because it demonstrates:
- database extension usage
- containerized infrastructure with Docker
- structured data storage in PostgreSQL
- reproducible execution with SQL and Python
- a realistic modern data engineering use case involving vector search and retrieval

## Project Structure

    pgvector-presentation/
    ├── app/demo.py
    ├── sql/01_init.sql
    ├── sql/02_queries.sql
    ├── sql/03_index_demo.sql
    ├── docker-compose.yml
    ├── requirements.txt
    ├── README.md
    ├── AI_USAGE.md
    ├── screenshots/
    └── slides/

## Prerequisites
- Docker Desktop
- Python 3
- pip

## Installation
Install the Python dependency:

    python -m pip install -r requirements.txt

## Running the Example
Start the database from scratch:

    docker compose down -v
    docker compose up -d

Initialize pgvector and create the demo table:

    docker exec -i pgvector-db psql -U postgres -d pgvectordb -f /sql/01_init.sql

Run the SQL query demonstrations:

    docker exec -i pgvector-db psql -U postgres -d pgvectordb -f /sql/02_queries.sql

Create and inspect the HNSW index:

    docker exec -i pgvector-db psql -U postgres -d pgvectordb -f /sql/03_index_demo.sql

Run the Python application demo:

    python app/demo.py

## Expected Output
Example Python output:

    Top 3 similar documents:
    ------------------------------------------------------------
    id=4 | title=Recommendation Systems | category=ai | l2_distance=0.0316
    id=3 | title=Semantic Search with Embeddings | category=ai | l2_distance=0.0346
    id=6 | title=Apache Airflow Overview | category=orchestration | l2_distance=0.7136

## Technical Summary
This project uses:
- PostgreSQL with the pgvector extension
- a vector(4) column for embeddings
- L2 distance queries with the <-> operator
- an HNSW index using vector_l2_ops
- a Python script with psycopg to query nearest neighbors

## Notes
If SQL changes are not appearing, recreate the database:

    docker compose down -v
    docker compose up -d

## AI Usage Disclosure
Please see AI_USAGE.md.

## Repository
Public GitHub repository:
https://github.com/ibrahim-bancar/pgvector-presentation
