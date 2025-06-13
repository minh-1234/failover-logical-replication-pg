root@b4de8a7b3fc1:/# createuser -U postgresadmin -P -c 5 --replication replicationUser 
Enter password for new role: 
Enter it again:
root@b4de8a7b3fc1:/# psql --username=postgresadmin postgresdb
psql (17.0 (Debian 17.0-1.pgdg120+1))
Type "help" for help.

postgresdb=# CREATE USER replicator WITH REPLICATION PASSWORD 'replicator_password'
postgresdb-# CREATE TABLE customers (firstname text, customer_id serial, date_created timestamp);
ERROR:  syntax error at or near "CREATE"
LINE 2: CREATE TABLE customers (firstname text, customer_id serial, ...
        ^
postgresdb=# CREATE TABLE customers (firstname text, customer_id serial, date_created timestamp);
CREATE TABLE
postgresdb=# INSERT INTO customers (firstname, date_created)
VALUES ('Nguyen Van A', NOW());
INSERT 0 1
postgresdb=# exit
root@b4de8a7b3fc1:/# exit
exit