#!/bin/bash

# DB name:  dnquiz
# User:     quizadmin
# Pass:     quizadmin

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
  CREATE ROLE quizadmin LOGIN
    ENCRYPTED PASSWORD 'md5dec85d5eaa21e3a7c14e451ba0c3d7e2'
    NOSUPERUSER INHERIT CREATEDB CREATEROLE NOREPLICATION;

   CREATE DATABASE dnquiz
    WITH OWNER = quizadmin
    ENCODING = 'UTF8'
    TABLESPACE = pg_default
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TEMPLATE template0
    CONNECTION LIMIT = -1;
    GRANT ALL ON DATABASE dnquiz TO quizadmin;
    GRANT CONNECT, TEMPORARY ON DATABASE dnquiz TO public;
EOSQL