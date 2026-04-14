-- Show all documents
SELECT id, title, category, content, embedding
FROM documents
ORDER BY id;

-- Query 1: database-oriented vector
SELECT id, title, category, ROUND((embedding <-> '[0.96,0.83,0.11,0.23]')::numeric, 4) AS l2_distance
FROM documents
ORDER BY embedding <-> '[0.96,0.83,0.11,0.23]'
LIMIT 3;

-- Query 2: AI-oriented vector
SELECT id, title, category, ROUND((embedding <-> '[0.19,0.14,0.94,0.89]')::numeric, 4) AS l2_distance
FROM documents
ORDER BY embedding <-> '[0.19,0.14,0.94,0.89]'
LIMIT 3;

-- Query 3: DevOps-oriented vector
SELECT id, title, category, ROUND((embedding <-> '[0.77,0.71,0.21,0.16]')::numeric, 4) AS l2_distance
FROM documents
ORDER BY embedding <-> '[0.77,0.71,0.21,0.16]'
LIMIT 3;

-- Query 4: MLOps / analytics-oriented vector
SELECT id, title, category, ROUND((embedding <-> '[0.43,0.38,0.69,0.63]')::numeric, 4) AS l2_distance
FROM documents
ORDER BY embedding <-> '[0.43,0.38,0.69,0.63]'
LIMIT 3;
