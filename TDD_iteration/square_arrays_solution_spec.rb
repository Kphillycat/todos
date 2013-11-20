require './square_arrays_solution' 

describe "#square_array" do
	it "should return an array" do
		expect(square_array([1,2])).to be_a(Array)
	end

	it "should return a square [4,9] of the array [2,3]" do
		expect(square_array([2,3])).to eq([4,9])
	end
end