require './fakehashwrapper'

describe "#fakehash" do
	it "should initialize a hash with the given values" do
		test_fake_hash = FakeHashWrapper.new(key: "value1", key2: "value2")
		expect(test_fake_hash[:key]).to eq("value1")
	end

	it "should find all values that have keys beginning with the letter a" do
		test_fake_hash = FakeHashWrapper.new(a1: "value1", b1: "value2", a2: "value3")
		expect(test_fake_hash.find_val_beginning_with("a")).to eq(["value1","value3"])
	end

	it "should return all keys in descending alphabetized array" do
		test_fake_hash = FakeHashWrapper.new(a1: "value1", g1: "value2", c1: "value3", z1: "value4")
		expect(test_fake_hash.desc_alpha_keys).to eq([:z1, :g1, :c1, :a1])
	end
end