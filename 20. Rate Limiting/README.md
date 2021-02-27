![](https://github.com/YYSU/system-expert-system-design/blob/main/20.%20Rate%20Limiting/Rate%20Limiting.png?raw=true)

# How to run this ? 
1. Open two terminals

- server : 
```node server.js```
Listening on port 3000

- client Jim:
```curl -H 'user: Jim' localhost:3000/index.html```
```<html>Hello World !</html>```

But if we send the request again in 5 seconds, we will get:
```Too many requests.```

However, if we try to simulate other user and send the request, we can still get result.

- client Bob:
```curl -H 'user: Bob' localhost:3000/index.html```
```<html>Hello World !</html>```