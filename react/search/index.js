
var express = require('express');
var app = express();

app.use(express.static('./public'));
app.use('/stepone', express.static('./1-StepOne/public'));
app.use('/steptwo', express.static('./2-StepTwo/public'));
app.use('/stepthree', express.static('./3-StepThree/public'));
app.use('/stepfour', express.static('./4-StepFour/public'));
app.use('/stepfive', express.static('./5-StepFive/public'));

app.get('/', function(req, res) {res.render('./public/index.html');});
app.get('/stepone', function(req, res) {res.render('./1-StepOne/public/index.html');});
app.get('/steptwo', function(req, res) {res.render('./2-StepTwo/public/index.html');});
app.get('/stepthree', function(req, res) {res.render('./3-StepThree/public/index.html');});
app.get('/stepfour', function(req, res) {res.render('./4-StepFour/public/index.html');});
app.get('/stepfive', function(req, res) {res.render('./5-StepFive/public/index.html');});

app.listen(process.env.PORT || 8080, function () {
  console.log('listening !');
});
