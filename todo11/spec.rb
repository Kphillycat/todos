require_relative "./key_for_min_value"

describe "#key_for_min_value" do
	it "should return the key of the min value of hash" do
		expect(key_for_min_value({:test_1 => 100, :test_2 => 20, :test_3 => 2, :test_4 => 400})).to eq(:test_3)
	end

	it "should return nil for empty hash" do
		expect(key_for_min_value({})).to eq(nil)
	end

	it "should return min value even if 100000 is in hash" do
		expect(key_for_min_value({:test_1 => 100000, :test_2 => 20, :test_3 => 2, :test_4 => 400})).to eq(:test_3)
	end

	it "hould return min value even if FIXNUM_MAX is in hash" do
		FIXNUM_MAX = (2**(0.size * 8 -2) -1)
		#http://stackoverflow.com/questions/535721/ruby-max-integer
		expect(key_for_min_value({:test_1 => 100000, :test_2 => FIXNUM_MAX, :test_3 => 200000, :test_4 => 400000})).to eq(:test_1)

	end
end