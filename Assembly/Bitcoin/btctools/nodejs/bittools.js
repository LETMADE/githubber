var bitcoin = require('bitcoin');
var http=require('http');

var login = {
  host: 'localhost',
  port: 8332,
  user: 'barisser',
  pass: '2bf763d2132a2ccf3ea38077f79196ebd600f4a29aa3b1afd96feec2e7d80beb3d9e13d02d56de0f'
};

p
var options = {
  host: 'www.google.com'
};

callback = function(response) {
  var str = '';

  //another chunk of data has been recieved, so append it to `str`
  response.on('data', function (chunk) {
    str += chunk;
  });

  //the whole response has been recieved, so we just print it out here
  response.on('end', function () {
    console.log(str);
  });
}

http.request(options, callback).end();
