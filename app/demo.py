import psycopg


def run_demo():
    conn = psycopg.connect(
        host="localhost",
        port=5432,
        dbname="pgvectordb",
        user="postgres",
        password="postgres",
    )

    query_vector = "[0.19, 0.12, 0.94, 0.89]"

    sql = """
    SELECT
        id,
        title,
        category,
        ROUND((embedding <-> %s)::numeric, 4) AS l2_distance
    FROM documents
    ORDER BY embedding <-> %s
    LIMIT 3;
    """

    try:
        with conn:
            with conn.cursor() as cur:
                cur.execute(sql, (query_vector, query_vector))
                rows = cur.fetchall()

                print("Top 3 similar documents:")
                print("-" * 60)
                for row in rows:
                    doc_id, title, category, distance = row
                    print(
                        f"id={doc_id} | title={title} | "
                        f"category={category} | l2_distance={distance}"
                    )
    finally:
        conn.close()


if __name__ == "__main__":
    run_demo()
