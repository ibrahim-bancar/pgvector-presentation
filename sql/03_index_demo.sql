-- Create an HNSW index for L2 distance
CREATE INDEX IF NOT EXISTS documents_embedding_hnsw_idx
ON documents
USING hnsw (embedding vector_l2_ops);

-- Show indexes on the table
SELECT
    indexname,
    indexdef
FROM pg_indexes
WHERE tablename = 'documents';

-- Run a nearest-neighbor query again
SELECT
    id,
    title,
    category,
    ROUND((embedding <-> '[0.96, 0.82, 0.11, 0.22]')::numeric, 4) AS l2_distance
FROM documents
ORDER BY embedding <-> '[0.96, 0.82, 0.11, 0.22]'
LIMIT 3;
