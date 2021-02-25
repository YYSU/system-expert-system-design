![]()

# How to run this ? 
1. Open four terminal to simulate one server two clients (Jim & Bob)

- server : node server.js
Listening on port 3001

- Client Jim (stream) : NODE=stream NAME=Jim node client.js
> chat room: welcome

- Client Bob (polling) : NODE=poll NAME=Bob node client.js
> chat room: welcome

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