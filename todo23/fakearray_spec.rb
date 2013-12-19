require './fakearray'

describe "#[]" do
	it "should return an value of the fakearray at a given index" do
		test_fakeness = FakeArray.new(1,2,3)
		expect(test_fakeness[1] ).to eq(2)
	end

	it "should return the first element of the array" do
		test_fakeness = FakeArray.new(1,2,3)
		expect(test_fakeness.first).to eq(1)
	end

	it "should be able to iteration through the fake array" do
		test_fakeness = FakeArray.new(1,2,3)
		test_arry = []
		test_fakeness.each {|fake| test_arry << fake+1}
		expect(test_arry).to eq([2,3,4])
	end
end

