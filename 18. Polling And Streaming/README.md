![](https://github.com/YYSU/system-expert-system-design/blob/main/18.%20Polling%20And%20Streaming/Polling%20And%20Streaming.png?raw=true)

# How to run this ? 
1. Open three terminal to simulate one server two clients (Jim & Bob)

- server : node server.js
Listening on port 3001

- Client Jim (stream) : NODE=stream NAME=Jim node client.js
> chat room: welcome

- Client Bob (polling) : NODE=poll NAME=Bob node client.js
> chat room: welcome



2. When I type something in Client Bob, Jim will get the messages immediately , cause Jim use streaming

- Client Bob (polling) : NODE=poll NAME=Bob node client.js
```
> chat room: Welcome
hi
how are u, Jim
```

- Client Jim (stream) : NODE=stream NAME=Jim node client.js
```
> chat room: Welcome
> Bob: hi
> Bob: how are u, Jim
```

3. When I type something in Client Jim, Bob will not get the messages immediately , cause Jim use polling

- Client Jim (stream) : NODE=stream NAME=Jim node client.js
```
> chat room: Welcome
> Bob: hi
> Bob: how are u, Jim
hey
asdf
asdf
asdf
asd
fas
```

- Client Bob (polling) : NODE=poll NAME=Bob node client.js
```
> chat room: Welcome
hi
how are u, Jim
> Jim: hey
> Jim: asdf
> Jim: asdf
> Jim: asdf
> Jim: asd
> Jim: fas
```


4. Then you can open a new terminal and use the script to see more clearly : 
```(for i in `seq 1 10000`; do sleep 1; echo $i; done) | NAME=Bot node client.js```
