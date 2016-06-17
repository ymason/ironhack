var numbers = '80:70:90:100';
averageColon(numbers);

var splitNumbers = number.split(":");

var reducedNumbers = splitNumbers.reduce(function(pre, next){
return parseInt(pre) + parseInt(next);

})

var average = reducedNumbers / splitNumbers.length;

console.log(average)

//=> 85