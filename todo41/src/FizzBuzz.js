function FizzBuzz(NumNum){
	if(NumNum % 15 == 0)
		return("FizzBuzz");
	if(NumNum % 3 == 0)
		return("Fizz");
	if(NumNum % 5 == 0)
		return("Buzz");
}

for(var i = 1; i <= 100; i++){
	console.log(i) + console.log(FizzBuzz(i));
}
