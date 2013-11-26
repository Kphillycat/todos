# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
def key_for_min_value(hash)
  return nil if hash.empty?
  min_value_key = nil
  min_value = (2**(0.size * 8 -2) -1) #Theorectical Fixnum_max 
  #http://stackoverflow.com/questions/535721/ruby-max-integer
  hash.each do |key, value|
  	if value < min_value
  		min_value_key = key 
  		min_value = value
  	end
  end
  min_value_key
end