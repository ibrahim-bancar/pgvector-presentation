DROP INDEX IF EXISTS documents_embedding_hnsw_idx;

CREATE INDEX documents_embedding_hnsw_idx
ON documents
USING hnsw (embedding vector_l2_ops);

SELECT indexname, indexdef
FROM pg_indexes
WHERE tablename = 'documents'
ORDER BY indexname;

SELECT id, title, category, ROUND((embedding <-> '[0.96,0.83,0.11,0.23]')::numeric, 4) AS l2_distance
FROM documents
ORDER BY embedding <-> '[0.96,0.83,0.11,0.23]'
LIMIT 3;
