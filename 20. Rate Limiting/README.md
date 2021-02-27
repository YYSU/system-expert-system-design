# How to run this ? 
1. Open two terminals

- server : 
```node server.js```
Listening on port 3000

- client :
```curl -H 'user: Jim' localhost:3000/index.html```
<html>Hello World !</html>

But if we send the request again in 5 seconds, we will get:

Too many requests.

