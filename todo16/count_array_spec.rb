require "./count_array"

describe "#count" do
	it "should take an array and return hash with the number of types an element occurs" do
		test_array =['cat', 'dog', 'fish', 'fish']
		expect(count(test_array)).to eq({ 'cat' => 1, 'dog' => 1, 'fish' => 2 })
	end
end