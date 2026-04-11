import psycopg2

conn = psycopg2.connect(
    host="database-6.ch5v1e7j91cy.eu-west-2.rds.amazonaws.com",
    database="warehouse",
    user="postgres",
    password="postgres",
    port="5432"
)

cur = conn.cursor()
cur.execute("SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';")

for table in cur.fetchall():
    print(table[0])

cur.close()
conn.close()