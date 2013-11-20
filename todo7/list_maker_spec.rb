require './listmaker'

describe "#make_list" do
	# it "should return an Array of strings" do
	# 	expect(make_list(["ich", "ni", "san"])).to be_a(Array)
	# end

	it "should return an Array of strings with (index+1)." do
		expect(make_list(["ich", "ni", "san"])).to eq(["1. ich", "2. ni", "3. san"])
	end
end