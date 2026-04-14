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
('PostgreSQL Basics', 'database', 'Introduction to relational databases and SQL fundamentals.', '[0.95,0.80,0.10,0.20]'),
('Advanced PostgreSQL', 'database', 'Indexing, joins, query planning, and performance tuning in PostgreSQL.', '[0.97,0.85,0.12,0.25]'),
('SQL Optimization Techniques', 'database', 'Query optimization, execution plans, and indexing strategies for SQL workloads.', '[0.93,0.82,0.15,0.22]'),

('Semantic Search with Embeddings', 'ai', 'Using embeddings and vector similarity for semantic search applications.', '[0.20,0.15,0.95,0.90]'),
('Recommendation Systems', 'ai', 'Vector representations can be used for similarity-based recommendation systems.', '[0.18,0.10,0.92,0.88]'),
('Vector Databases for Semantic Search', 'ai', 'Embeddings enable meaning-based retrieval across text and document collections.', '[0.22,0.18,0.96,0.91]'),

('Docker for Data Engineering', 'devops', 'Containerization helps package databases and data tools consistently.', '[0.75,0.70,0.20,0.15]'),
('CI/CD for Data Applications', 'devops', 'Continuous integration and deployment improve reliability of data applications.', '[0.78,0.72,0.22,0.18]'),

('Apache Airflow Overview', 'orchestration', 'Airflow is used to schedule and orchestrate data pipelines.', '[0.30,0.25,0.45,0.40]'),
('DAG Design Best Practices', 'orchestration', 'Well-structured DAG design improves pipeline maintainability and scheduling clarity.', '[0.32,0.28,0.48,0.42]'),

('Building Analytics Dashboards', 'analytics', 'Dashboards help monitor KPIs, trends, and operational metrics.', '[0.55,0.50,0.35,0.30]'),
('Event Tracking and Metrics', 'analytics', 'Event-based data collection supports product analytics and performance reporting.', '[0.57,0.52,0.38,0.33]'),

('Model Serving Fundamentals', 'mlops', 'Model serving focuses on deploying machine learning models for inference.', '[0.40,0.35,0.70,0.65]'),
('Feature Store Concepts', 'mlops', 'Feature stores support reusable and consistent features in ML systems.', '[0.42,0.37,0.72,0.67]');

SELECT 'pgvector extension enabled and documents table initialized successfully' AS status;
