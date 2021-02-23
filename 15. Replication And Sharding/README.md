![](https://github.com/YYSU/system-expert-system-design/blob/main/15.%20Replication%20And%20Sharding/Replication%20And%20Sharding.png?raw=true)

# How to run this ? 
1. Open four terminal to simulate two sharding and one reverse proxy and one client 

- Sharding A : DATA_DIR=aedb_data_0 PORT=3000 node aedb.js
Listening on port 3000

- Sharding B : DATA_DIR=aedb_data_1 PORT=3001 node aedb.js
Listening on port 3001

- Reverse proxy : node aedb_proxy.js 
Listening on port 8000

- client send request 

curl --header 'Content-type: application/json' --data '{"data": "This is ddata."}' localhost:8000/a
```
Reverse proxy 
Forwarding to: http://localhost:3001/a.

Sharding B
Soring data at key a.
```

curl --header 'Content-type: application/json' --data '{"data": "This is ddata."}' localhost:8000/b
```
Reverse proxy 
Forwarding to: http://localhost:3001/b.

Sharding A
Soring data at key b.
```

curl -w "\n" localhost:8000/b
```
Reverse proxy 
Forwarding to: http://localhost:3001/b.

Sharding A
Retrieving data from key b.

client
This is ddata.
```

curl -w "\n" localhost:8000/a
```
Reverse proxy 
Forwarding to: http://localhost:3001/a.

Sharding B
Retrieving data from key a.

client
This is ddata.
```