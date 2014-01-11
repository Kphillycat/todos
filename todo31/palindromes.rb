# A palindrome is a string that is written the same forward as it is in reverse. Write a method to return the longest palindrome in a given string
require 'debugger'
 
def palindrome?(test_string)
	test_string == test_string.reverse
end

def longest_palindrome(string)
 	palindromes = []
 	string.each_char.with_index do |character, index|
   		last_index = -1
  		counter = 0
   		while counter < string.length - (index + 1)
    		if character == string[last_index]
       			palindromes << string[index..last_index] if palindrome?(string[index..last_index])
     		end
     		counter += 1
     		last_index -= 1
   		end
 	end
 	palindromes.max{|a, b| a.length <=> b.length}
end
 
# longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd") #=> "dhfdkjfffhhfffjkdfhd"