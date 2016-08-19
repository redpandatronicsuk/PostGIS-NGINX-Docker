FROM mdillon/postgis:9.5

RUN mkdir -p /docker-entrypoint-initdb.d

COPY ./init-db.psql /docker-entrypoint-initdb.d/gisdemo.sql
