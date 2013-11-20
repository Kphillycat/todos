require './max_solution'

describe "#maximum" do
	it "should return an Integer" do
		expect(maximum([9,10,3])).to be_a(Integer)
	end
	
	it "should return the max (9) of array [1,9,3]" do
		expect(maximum([1,9,3])).to be(9)
	end
end

describe Array, "#maximum" do
	it "should return an Integer" do
		expect([9,10,3].maximum).to be_a(Integer)
	end
	
	it "should return the max (9) of array [1,9,3]" do
		expect([1,9,3].maximum).to be(9)
	end
end