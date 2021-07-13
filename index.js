const express = require('express');
const http = require('http');

const app = express();
app.use(express.static('./frontend/build/web'));

const server = http.createServer(app);

server.listen(3000, () => {
  console.log('server started');
});
