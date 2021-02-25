const helpers = require('./helpers');
const messagingApi = require('./messaging_api');
const readline = require('readline');

const displayedMessages = {};

const terminal = readline.createInterface({
    input: process.stdin,
});

terminal.on('line', text => {
    const username = process.env.NAME;
    const id = helpers.getRandomInt(1000000);
    displayedMessages[id] = true;

    const message = {id, text, username};
    messagingApi.sendMessage(message);
});

function displayMessages(message) {
    console.log(`> ${message.username}: ${message.text}`);
    displayedMessages[message.id] = true;
}

async function getAndDisplayMessages() {
    const messages = await messagingApi.getMessages();

    for (const message of messages) {
        const meseageAlreadyDisplayed = message.id in displayedMessages;
        if (!meseageAlreadyDisplayed) displayMessages(message);
    }
}

function pollingMessages() {
    setInterval(getAndDisplayMessages, 3000);
}

function streamMessages() {
    const messagingSocket = messagingApi.createMessagingSocket();

    messagingSocket.on('message', data => {
        const message = JSON.parse(data);
        const meseageAlreadyDisplayed = message.id in displayedMessages;
        if (!meseageAlreadyDisplayed) displayMessages(message);
    });
}


if (process.env.NODE === 'poll') {
    getAndDisplayMessages();
    pollingMessages()
} else {
    getAndDisplayMessages();
    streamMessages();
}