var fs = require('fs');

function slideLoader (file, callback) {	
	function splitSlides (err, str) {	
		if (err) {
			console.log('Oh no! Error!', err) ;
		} else {
			var slides = str.split('\n----\n') ;
			callback(slides) ;
		}
	}
	fs.readFile(file, 'utf8', splitSlides) ;
}

module.exports = slideLoader ;