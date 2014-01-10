# Get keys of a hash whose values equal to given arguments.
 
# Code:
class Hash
  def keys_of(*args)
  	my_values = *args
  	keys_arry = []
  	self.each do |key,value|
  		keys_arry << key if my_values.include?(value)
  	end
  	keys_arry
  end
end
 
