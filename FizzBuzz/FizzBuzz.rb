def FizzBuzz(number)	
	if number % 3 == 0 && number % 5 == 0
		"FizzBuzz"
	elsif number % 5 == 0
		"Buzz"
	elsif number % 3 == 0 
		"Fizz"
	else
		number			
	end
end

# for i in 1..100
# 	puts i.to_s 
# 	puts FizzBuzz(i)
# end