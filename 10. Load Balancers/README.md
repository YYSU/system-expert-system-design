![](https://github.com/YYSU/system-expert-system-design/blob/main/10.%20Load%20Balancers/load-balancer.jpeg?raw=true)

# How to use it
1. Run Nginx 

2. Open two terminal
```
PORT=3000 node server.js
PORT=3001 node server.js
```

3. Curl the nginx 
```
curl localhost:8081/hello
curl localhost:8081/hello
curl localhost:8081/hello
curl localhost:8081/hello
curl localhost:8081/hello
curl localhost:8081/hello
```


