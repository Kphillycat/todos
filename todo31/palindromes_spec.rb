require './palindromes'

describe "#longest_palindrome" do
	it "should return the part of the string with the longest palindrome" do
		expect(longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd")).to eq("dhfdkjfffhhfffjkdfhd")
	end
end