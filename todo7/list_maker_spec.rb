require './listmaker'

describe "#make_list" do
	it "should return an Array of strings" do
		expect(make_list(["ich", "ni", "san"])).to be_a(Array)
	end

	it "should return an Array of strings with (index+1)." do
		index = 0
		make_list(["ich", "ni", "san"]).each do |word|
			expect(word).to be((index+1).to_s + ". " + word)
			index+=1
		end
	end
	
	# roll_dice.each do |die|
	# 		expect(die).to be > 0
	# 		expect(die).to be < 7
	# 	end

end