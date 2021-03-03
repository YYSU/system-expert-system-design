![]()

# How to run this ? 
1. Open five terminals

- server : 
```node server.js```
Listening on port 3001



- client Jim:
```TOPIC_ID=stock_prices node subscriber.js```


- 
```TOPIC_ID=news_alert node subscriber.js```

- 
```TOPIC_ID=stock_prices node subscriber.js```


- 
```(for i in `seq 1 10000`; do sleep 1; echo NEW Stock Price; done) | NAME=STOCK_BROKER TOPIC_ID=stock_prices node publisher.js```