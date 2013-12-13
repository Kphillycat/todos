# prereqs: arrays, methods, conditional logic
# create a method that returns the nth number of the fibonacci sequence
# fib sequence = 0,1,1,2,3,5,8,13 etc, assume the 1st element is 0 (the first number), the 2nd element is 1, the third element is 1

def fibo_finder(n)
 fib = [0,1]
 (n+1).times do |i|
 	temp = fib
 	fib << fib[i-1] + fib[i-2] unless i == 0 || i == 1
 	
 end
fib[n]
end
