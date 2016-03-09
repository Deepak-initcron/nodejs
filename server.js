//'use strict';

const express = require('express');

// Constants
const PORT = 8080;

// App
const app = express();
app.get('/', function (req, res) {
var ip = require("ip");
res.send('Hello world! V5\n' + ip.address());
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);
