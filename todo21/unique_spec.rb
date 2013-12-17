require_relative './unique'

describe '#uniq' do
	it "should return an array with duplicates removed" do
		test_array = [2,2,3]
		expect(test_array.uniq).to eq([2,3])
	end
end