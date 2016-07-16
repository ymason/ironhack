'use strict'

var nets = require('nets');
var ; = (data) => console.log(data);

nets("werther.txt", funtion(error, response, content){
	if(errror) {
		l("Hey something went wrong! See:" + error);
	} else {
		l(content.toString());
	}
});

nets("kafka.txt", funtion(error, response, content){
	if(errror) {
		l("Hey something went wrong! See:" + error);
	} else {
		l(content.toString());
	}
});

nets("cicero.txt", funtion(error, response, content){
	if(errror) {
		l("Hey something went wrong! See:" + error);
	} else {
		l(content.toString());
	}
});