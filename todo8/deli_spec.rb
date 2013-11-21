require './deli'



describe Deli, "#take_a_number" do 
	my_deli = Deli.new

	it "should take customer's name and return array with their number and name" do
		expect(my_deli.take_a_number("KDizzle")).to eq(["1. KDizzle"])
	end
end


describe Deli, "#now_serving" do 
	my_deli = Deli.new
	
	my_deli.line = ["1. KDizzle", "2. BobBizzle", "3. FredSizzle"]

	it "should remove a customer from instance variable array and returns their name" do
		expect(my_deli.now_serving).to eq("KDizzle")
		expect(my_deli.line).to eq(["2. BobBizzle", "3. FredSizzle"])
	end
end