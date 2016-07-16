// var sleepCount = function(seconds){
// 	console.log("It's been 3 seconds");
// }

// var sleep = function(seconds, callback) {
// 	var timer = seconds * 1000;
// 	setTimeout(function(timer) {callback(timer)}, timer)
// }

// sleep(3, sleepCount)

function sleep(seconds, callback){
	setTimeout(callback, seconds * 1000);
}

sleep(3, function(){
	console.log("It's been 3 seconds");
})