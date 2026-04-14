-- Show all records
SELECT * FROM documents;

-- Similarity query 1: database-oriented vector
SELECT
    id,
    title,
    category,
    ROUND((embedding <-> '[0.96, 0.82, 0.11, 0.22]')::numeric, 4) AS l2_distance
FROM documents
ORDER BY embedding <-> '[0.96, 0.82, 0.11, 0.22]'
LIMIT 3;

-- Similarity query 2: AI-oriented vector
SELECT
    id,
    title,
    category,
    ROUND((embedding <-> '[0.19, 0.12, 0.94, 0.89]')::numeric, 4) AS l2_distance
FROM documents
ORDER BY embedding <-> '[0.19, 0.12, 0.94, 0.89]'
LIMIT 3;
