function FizzBuzz(NumNum){
	if(NumNum % 3 == 0)
		console.log("Fizz");
	if(NumNum % 5 == 0)
		console.log("Buzz");
}

for(var i = 1; i <= 100; i++){
	console.log(i) + FizzBuzz(i);
}
