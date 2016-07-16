// main.js

// var slides = slideLoader('slides.txt');

var slideLoader = require('./slide-loader');

slideLoader('slides.txt', function (slides) {
	slides.forEach(function (slide) {
		console.log('\n\n\n\n' + slide) ;
	}) ;
}) ;

// Example Module = fs.readFile

// var fs = require('fs');

// function print (error, content) {
// 	if (error) {
// 		console.log('Oh no! Error!, error');
// 	}
// 	console.log('Success!', content);
// }

// fs.readFile('file.txt', 'utf8', print);