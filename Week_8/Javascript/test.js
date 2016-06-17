for (var i = 1; i <= 42; i += 2) {
		console.log(i)
	}

var name = "Josh";

function sayHiToJosh(){
	console.log(name);
}

function sayHiToBill(){
	var name = "Bill";
	console.log(name);
}

sayHiToBill();
sayHiToJosh();