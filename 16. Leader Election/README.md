# Daigram
![diagram](https://github.com/YYSU/system-expert-system-design/blob/main/16.%20Leader%20Election/Leader%20Election.png?raw=true)


# How to use it
1. Run etcd in your machine 

2. Open four terminal 

- python3 leader_election.py server1
```
New leader election happening.
I am the leader
Refreshing lease; stil the leader
Refreshing lease; stil the leader
Refreshing lease; stil the leader
Refreshing lease; stil the leader
Refreshing lease; stil the leader
Refreshing lease; stil the leader
Refreshing lease; stil the leader
Refreshing lease; stil the leader
Refreshing lease; stil the leader
```

- python3 leader_election.py server2
```
New leader election happening.
I am a follower
```

- python3 leader_election.py server3 
```
New leader election happening.
I am a follower
```

- python3 leader_election.py server4
```
New leader election happening.
I am a follower
```


When you press Ctrl-c in the server1

Server1
```
        .
        .
Refreshing lease; stil the leader
^C
Revoking lease; no longer the leader
```

Server2
```
New leader election happening.
I am a follower
LEADERSHIP CHANGE REQUIRED
New leader election happening.
I am a follower
```

Server3
```
New leader election happening.
I am a follower
LEADERSHIP CHANGE REQUIRED
New leader election happening.
I am a follower
```

Server4
```
New leader election happening.
I am a follower
LEADERSHIP CHANGE REQUIRED
New leader election happening.
I am the leader
Refreshing lease; stil the leader
Refreshing lease; stil the leader
Refreshing lease; stil the leader
Refreshing lease; stil the leader
Refreshing lease; stil the leader
```