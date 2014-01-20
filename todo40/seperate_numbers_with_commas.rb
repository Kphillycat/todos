# Separate numbers with a comma each three digits.
 
def separate_with_comma(n)
  #code goes here
  if n < 1000
  	return n.to_s
  end
  n = n.to_s
  nu_num = ""
  n.reverse.each_char.with_index do |digit, index|
		if index % 3 == 0 && index != 0
			nu_num << "," + digit
		else
			nu_num << digit
		end
  end

  nu_num.reverse
end