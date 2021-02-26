# How to run this ? 
1. Open two terminals

- server : 
```node server.js```
Listening on port 3000.

- client :
```curl localhost:3000/static/new_feature.html```
Unauthorized.

2. When changed the value "newFeatureLaunched": false to "newFeatureLaunched": true and restarted the server, you can see 
- server : 
```node server.js```
Listening on port 3000.

- client :
```curl localhost:3000/static/new_feature.html```
<html>Hello World!</html>
