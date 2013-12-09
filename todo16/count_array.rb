def count(count_array)
	nu_hash = Hash.new(0)
	count_array.each do |element|
		nu_hash[element] += 1
	end
	nu_hash
end