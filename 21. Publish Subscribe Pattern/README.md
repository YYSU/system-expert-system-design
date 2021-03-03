![]()

# How to run this ? 
1. Open five terminals

- server : 
```node server.js```
Listening on port 3001



- Two subscriber listen to topic stock_prices
```TOPIC_ID=stock_prices node subscriber.js```


```TOPIC_ID=stock_prices node subscriber.js```

- One subscriber listen to topic news_alert
```TOPIC_ID=news_alert node subscriber.js```


When I publish message to topic stock_prices
- Publish messages 
```(for i in `seq 1 10000`; do sleep 1; echo NEW Stock Price; done) | NAME=STOCK_BROKER TOPIC_ID=stock_prices node publisher.js```

- Two subscriber listen to topic stock_prices
```TOPIC_ID=stock_prices node subscriber.js```
> STOCK_BROKER: NEW Stock Price
> STOCK_BROKER: NEW Stock Price
> STOCK_BROKER: NEW Stock Price
> STOCK_BROKER: NEW Stock Price
> STOCK_BROKER: NEW Stock Price
> STOCK_BROKER: NEW Stock Price


```TOPIC_ID=stock_prices node subscriber.js```
> STOCK_BROKER: NEW Stock Price
> STOCK_BROKER: NEW Stock Price
> STOCK_BROKER: NEW Stock Price
> STOCK_BROKER: NEW Stock Price
> STOCK_BROKER: NEW Stock Price
> STOCK_BROKER: NEW Stock Price
