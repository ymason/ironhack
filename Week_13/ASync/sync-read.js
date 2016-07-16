'use strict'
var fs = require('fs');
var l = (data) => console.log(data);

fs.readFileSync("werther.txt", function(error, content){
	if (error) {
		l(error);
	} else {
		l(content);
	}
});

fs.readFileSync("kafka.txt", function(error, content){
	if (error) {
		l(error);
	} else {
		l(content);
	}
});

fs.readFileSync("cicero.txt", function(error, content){
	if (error) {
		l(error);
	} else {
		l(content);
	}
});

// var werther = fs.readFileSync("wether.txt");
// l(werther);

// var kafka = fs.readFileSync("kafka.txt");
// l(kafka);

// var cicero = fs.readFileSync("cicero.txt");
// l(cicero);

