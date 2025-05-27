const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello from Kubernetes123!');
});

app.listen(port, () => {
  console.log(`Hello-service listening at http://localhost:${port}`);
});

