# prereqs arrays, methods, conditional logic
# part I. implement a maximum method that takes and array and returns the largest element of the array
# part II. reimplement this method as an instance method on the array class

def maximum(arr)
	max_num = -999
	arr.each do |num|
		max_num = num if num > max_num
	end
	max_num
end


# now rewrite this as a method on the array class
class Array
  
  def maximum
	max_num = -999
	self.each do |num|
		max_num = num if num > max_num
	end
	max_num
  end

end

# Max_arr = Array.new
# Max_arr << 1 << 2 << 9 << 4
# Max_arr.maximum
