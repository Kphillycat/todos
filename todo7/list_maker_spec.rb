require './listmaker'

describe "#make_list" do
	it "should return an Array of strings" do
		expect(make_list(["ich", "ni", "san"])).to be_a(Array)
	end

	it "should return an Array of strings with (index+1)." do
		index = 0
		word_array = make_list(["ich", "ni", "san"])
		["ich", "ni", "san"].each do |word|
			expect(word_array[index]).to eq((index+1).to_s + ". " + word)
			index+=1
		end
	end
end