# pgvector Presentation Outline

## Slide 1 — Cover
- Title: Semantic Similarity Search in PostgreSQL Using pgvector
- Course: YZV 322E — Applied Data Engineering
- Student: İbrahim Bancar
- Student ID: 150220313
- Date: April 2026

## Slide 2 — What Is pgvector?
- pgvector is an open-source PostgreSQL extension for storing and searching vector embeddings.
- It adds a vector data type and similarity search operators inside PostgreSQL.
- It supports exact and approximate nearest-neighbor search.
- It is useful for semantic search, recommendation, and similarity matching.

## Slide 3 — What Problem Does It Solve?
- Traditional SQL search is strong for exact matching and structured filtering.
- It is weaker for meaning-based retrieval.
- pgvector enables nearest-neighbor search on embeddings.
- This makes PostgreSQL more useful for semantic search applications.

## Slide 4 — Comparison with Alternatives
- Separate vector databases add extra infrastructure.
- Plain PostgreSQL lacks native vector search.
- pgvector keeps everything inside PostgreSQL.
- It is easy to combine with SQL filters, joins, and existing tables.

## Slide 5 — Why It Fits Applied Data Engineering
- Uses a real production-style database system.
- Combines Docker, SQL, and Python.
- Demonstrates indexing and query workflow.
- Shows reproducible engineering with scripts and containers.
- Connects databases with AI-style retrieval.

## Slide 6 — Demo Architecture and Workflow
- Docker runs PostgreSQL with pgvector.
- SQL scripts create the table and load sample embeddings.
- Similarity search uses L2 distance with the <-> operator.
- HNSW index improves nearest-neighbor search performance.
- Python queries the same database and returns top matches.

## Slide 7 — Advantages and Limitations
### Advantages
- Keeps vector search inside PostgreSQL
- Simple local setup with Docker
- Easy to combine with relational data
- Good for integrated applications

### Limitations
- This demo uses a very small handcrafted dataset
- Vector dimension is only 4 for simplicity
- Real systems would use real embeddings and larger data

## Slide 8 — Conclusion
- pgvector is a practical way to add vector similarity search to PostgreSQL.
- This demo showed setup, storage, querying, indexing, and Python integration.
- It is a strong Applied Data Engineering example because it combines infrastructure, SQL, indexing, and application access.

## Slide 9 — References
- Tiger Data — Implementing Filtered Semantic Search Using pgvector and JavaScript
- Blackslate — How to Install and Configure pgvector: A Detailed Guide
- Medium — SQL vs Vector Databases: Choosing the Right Tool for Your AI-Powered Application
- Official pgvector GitHub repository
