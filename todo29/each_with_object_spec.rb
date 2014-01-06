require './each_with_object'

describe "#even_sum" do
	it "should return array of reversed strings that are even in length" do
		expect(even_sum(["cat", "dog", "bird", "fish"])).to eq(["drib", "hsif"])
	end
end