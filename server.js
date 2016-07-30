'use strict';


var express    = require('express'),       
	app        = express(),   
	bodyParser = require('body-parser'),
	router 	   = express.Router(),
	port 	   = process.env.PORT || 8080;


app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

//banco de dados
var mongoose   = require('mongoose');
	try{
		mongoose.connect('mongodb://rootuser:1478963root@ds031865.mlab.com:31865/mcm');            
	} catch(e){
		console.lo("Error connecting");
	}


router.get('/', function(req, res) {
    res.json({ message: 'MCM Taekwondo - API 1.0' });   
});

require('./routes/routes')(router, app);

app.listen(port);
console.log('API running at port ' + port);