#Implement your own versions of collect and select
require 'debugger'
class Array
	def my_collect
	#code goes here
	index = 0 
	if block_given?
		while index < self.length
			result = yield self[index]
			self[index] = result 
			index += 1
		end	
		self
	else
		self.to_enum
	end
	end

	def my_select
	#
	index = 0
	nu_array = []
	if block_given?
		while index < self.length
			condition = yield self[index]
			if condition
				nu_array << self[index]
			end
			index += 1
			# debugger
			# puts "KWizzle"
		end
		nu_array		
	else 
		self.to_enum
	end
	end
end
#CHALLENGE:
#Implement these methods as instance methods on the array class.

# array = [1,2,3]
# puts "My Collect"
# puts array.my_collect{|num| num * num}
# puts "My Select"
# puts array.my_select {|num| num % 2 == 0}