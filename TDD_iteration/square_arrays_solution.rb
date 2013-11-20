# Instructions:
# Return an array that contains the squares of all elements in an array?

def square_array(some_array)
  squared_return_array = []
  some_array.each do |num|
  	squared_return_array << num * num
  end
  squared_return_array
end