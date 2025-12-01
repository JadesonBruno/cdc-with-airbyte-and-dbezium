# Use the official Debezium image as base
FROM debezium/postgres:17

# Image maintainer
LABEL maintainer="jadesonbruno.a@outlook.com"

# Update system packages
RUN apt-get update
