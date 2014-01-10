require './find_keys_matching_values_in_a_hash'

describe Hash, 'keys_of' do
	it "should return [:a]" do
		expect({a: 1, b: 2, c: 3}.keys_of(1)).to eq([:a])
	end

	it "should return [:a, :d]" do
		expect({a: 1, b: 2, c: 3, d: 1}.keys_of(1)).to eq([:a, :d])
	end

	it "should return [:a, :b, :d]" do
		expect({a: 1, b: 2, c: 3, d: 1}.keys_of(1, 2)).to eq([:a, :b, :d])
	end
end