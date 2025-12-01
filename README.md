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

5. Set up Airbyte Source to capture changes from PostgreSQL.
![airbyte-source-setup-1](./pics/configuring_source_airbyte_1.png)
![airbyte-source-setup-2](./pics/configuring_source_airbyte_2.png)

6. Set up Airbyte Destination to send data to your desired target (e.g., another database, data warehouse, etc.).
![airbyte-destination-setup-1](./pics/configuring_destination_airbyte_1.png)

7. Set up a sync schedule in Airbyte to automate the CDC process.
![airbyte-configuring-stream](./pics/configuring_stream_airbyte.png)

![airbyte-sync-schedule](./pics/configuring_sync_schedule_airbyte.png)
