import psycopg2

conn = psycopg2.connect(
    database="peer2peeru",
    user="postgres",
    password="123password",
    host="localhost",
    port="5433"
)
cursor = conn.cursor()
