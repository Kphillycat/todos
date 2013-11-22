class Anagram

	def initialize(word)
		@word = word
	end

	def match(match_array)
		matched_word = []
		match_array.each do |word|
			matched_word << word if word.downcase.chars.sort.join == @word.downcase.chars.sort.join
			#test for anagrams by sorting the two words and comparing
		end
		matched_word
	end
end