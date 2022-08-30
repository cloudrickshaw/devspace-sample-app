var express = require('express');
var request = require('request');
var app = express();
var apiUrl = process.env.API_URL

app.get('/ping', async (req, res) => {
  var body = await new Promise((resolve, reject) => {
    request( apiUrl + '/ping_api', (err, res, body) => {
      if (err) { 
        reject(err);
        return;
      }

      resolve(body);
    });
  });

  res.send(body);
});

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});
