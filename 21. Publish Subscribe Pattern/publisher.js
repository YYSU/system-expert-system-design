const messagingApi = require('./messaging_api');
const readline = require('readline');

const TOPIC_ID = process.env.TOPIC_ID;

const terminal = readline.createInterface({
    input: process.stdin,
});

terminal.on('line', text => {
    const NAME = process.env.NAME;
    
    const message = {NAME, text};
    messagingApi.publish(message, TOPIC_ID);
});