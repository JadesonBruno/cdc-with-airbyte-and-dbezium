# cdc-with-airbyte-and-dbezium

## Roadmap

```bash
# 1. Set up the Docker environment with PostgreSQL and Debezium
docker-compose up -d --build

# 2. Access the PostgreSQL container running Debezium
docker-compose exec postgres_dbezium bash
```

3. Create connection with postgres in Dbeaver or other sql client
![create-connection](./pics/create_connection_dbeaver.png)

4. Execute the script.sql to create the database, table, and publication for CDC.
