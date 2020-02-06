# docker-mongodb

Example *docker-compose.yaml* for **MongoDB**

## Getting Started

### Prerequisites

*Docker Engine* needs to be installed on your machine ([Docker Documentation](https://docs.docker.com/)).

### Environment variables

| Variable                     | Description                                                                                          |
| ---------------------------- | ---------------------------------------------------------------------------------------------------- |
| `HOST_PORT`                  | Set the port of host machine                                                                         |
| `HOST_DB_INIT_SCRIPT`        | Set the location of initialization script in the host machine                                        |
| `MONGO_INITDB_ROOT_USERNAME` | Set the superuser's username                                                                         |
| `MONGO_INITDB_ROOT_PASSWORD` | Set the superuser's password                                                                         |
| `MONGO_INITDB_DATABASE`      | Set the name of database to be used for creation scripts in /docker-entrypoint-initdb.d/*            |
| `MONGO_INITDB_USERNAME`      | Set the username of database to be used for creation scripts in /docker-entrypoint-initdb.d/*        |
| `MONGO_INITDB_PASSWORD`      | Set the user's password of database to be used for creation scripts in /docker-entrypoint-initdb.d/* |

### Get it running

```bash
docker-compose up -d
```

## References

* [MongoDB official docker image](https://hub.docker.com/_/mongo)
* [Github docker-library issues](https://github.com/docker-library/mongo/issues)