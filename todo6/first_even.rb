def first_even(items)
  items.each do |num|
  	if num % 2 == 0
  		return num
  	end
  end
end
