// function eat(food){
// 	console.log("Eating some" + food);
// }

var exampleArray = [ "pizza",
					"hot dog",
					"pizza",
					"ice cream",
					"fish",
					"steak",
					"oranges"]
					; 

function findOccurrences(array, wordToLookFor){
	var totalOccurrences = 0;
	
	array.forEach(function(word){
		if (word === wordToLookFor){
			totalOccurrences++;
		}
	});
	
	return totalOccurrences
}

var count = findOccurrences(exampleArray, "pizza");
console.log(count);

var foods = [ 'pizza', 'cookies', 'bread' ];

// foods.forEach(function (food) {
//     console.log(food);
// });

// var capFoods = foods.map(function(food)){
// 	return food.toUppercase();

// }

// console.log(capFoods)

// var foodMsg = foods.reduce(function (pre, food) {
//     return pre + ' and ' + food;
// });

// console.log(foodMsg);

// var breadless = foods.filter(function(food)){
// 	return food !== "Bread";
// }

// var food = "Pizza";

// if (food === "Pizza"){
// 	console.log("Pizza is my favorite food too");
// } else if (food === "Sushi"){
// 	console.log("Sushi is pretty good...");
// } else {
// 	console.log("Thats wierd...");
// }

var myQuote = "The dog says 'Bark' "

console.log(myQuote)