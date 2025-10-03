// index.js
const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => res.send('Hello World from the app!'));

app.get('/hello', (req, res) => {
  res.send('Hello from Honey Gohil !');
});

app.listen(PORT, () => console.log(`Server listening on ${PORT}`));
