CREATE EXTENSION IF NOT EXISTS vector;

DROP TABLE IF EXISTS documents;

CREATE TABLE documents (
    id BIGSERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    category TEXT NOT NULL,
    content TEXT NOT NULL,
    embedding VECTOR(4) NOT NULL
);

INSERT INTO documents (title, category, content, embedding) VALUES
('PostgreSQL Basics', 'database', 'Introduction to relational databases and SQL fundamentals.', '[0.95, 0.80, 0.10, 0.20]'),
('Advanced PostgreSQL', 'database', 'Indexing, joins, query planning, and performance tuning in PostgreSQL.', '[0.97, 0.85, 0.12, 0.25]'),
('Semantic Search with Embeddings', 'ai', 'Using embeddings and vector similarity for semantic search applications.', '[0.20, 0.15, 0.95, 0.90]'),
('Recommendation Systems', 'ai', 'Vector representations can be used for similarity-based recommendation systems.', '[0.18, 0.10, 0.92, 0.88]'),
('Docker for Data Engineering', 'devops', 'Containerization helps package databases and data tools consistently.', '[0.75, 0.70, 0.20, 0.15]'),
('Apache Airflow Overview', 'orchestration', 'Airflow is used to schedule and orchestrate data pipelines.', '[0.30, 0.25, 0.45, 0.40]');

SELECT 'pgvector extension enabled and documents table initialized successfully' AS status;
