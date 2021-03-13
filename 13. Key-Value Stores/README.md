# How to use it
1. Start a Redis server 
```
$ docker run --name my-redis -p 6379:6379 --restart always --detach redis
```

2. Run server
```
node server.js
```


3. Test path "/nocache/index.html" with curl
```
$ curl -w " Time: %{time_total}" localhost:3000/nocache/index.html
<html>Hello World !</html> Time: 3.016855
$ curl -w " Time: %{time_total}" localhost:3000/nocache/index.html
<html>Hello World !</html> Time: 3.004882
```

4. Test path "/cache/index.html" with curl
```
$ curl -w " Time: %{time_total}" localhost:3000/cache/index.html
<html>Hello World !</html> Time: 3.008784
$ curl -w " Time: %{time_total}" localhost:3000/cache/index.html
<html>Hello World !</html> Time: 0.003940
```


