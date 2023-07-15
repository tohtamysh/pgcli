# Usege

Run command
```sh
docker run -it --rm --link postgres:postgres --net network_default pgcli pgcli postgres://USER:PASSWORD@postgres/DBNAME
```

## Docker networks list
```sh
docker network ls
```