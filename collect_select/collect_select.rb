#Implement your own versions of collect and select
require 'debugger'
#class Array
def my_collect(array)
#code goes here
index = 0 
if block_given?
	while index < array.length
		result = yield array[index]
		array[index] = result 
		index += 1
	end	
	array
else
	array.to_enum
end
	
end

def my_select(array)
#
index = 0
nu_array = []
if block_given?
	while index < array.length
		condition = yield array[index]
		if condition
			nu_array << array[index]
		end
		index += 1
		# debugger
		# puts "KWizzle"
	end
	nu_array		
else 
	array.to_enum
end
end

#CHALLENGE:
#Implement these methods as instance methods on the array class.

# array = [1,2,3]
# puts "My Collect"
# puts my_collect(array) {|num| num * num}
# puts "My Select"
# puts my_select(array) {|num| num % 2 == 0}