const aes = require('aes256');

const key = 'special-key-1';
const otherKey = 'special-key-2';

const plaintext = 'yo, check it out';

const encrypted = aes.encrypt(key, plaintext);
console.log('Encrypted:', encrypted);

const decrypted = aes.decrypt(key, encrypted);
console.log('Decrypted:', decrypted);

const failDecrypted = aes.encrypt(otherKey, plaintext);
console.log('Failed Decrypted:', failDecrypted);