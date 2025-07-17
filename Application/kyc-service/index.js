const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('✅ Hello from KYC Service running on EKS!');
});

app.listen(port, '0.0.0.0', () => {
  console.log(`KYC Service is listening on port ${port}`);
});
