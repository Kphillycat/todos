require './seperate_numbers_with_commas'

describe 'seperate_with_comma' do
	it "should return number seperated with no commas" do
		expect(separate_with_comma(1)).to eq("1") 
	end
	it "should return number seperated with one comma" do
		expect(separate_with_comma(1000)).to eq("1,000") 
	end
	it "should return number seperated with one comma" do
		expect(separate_with_comma(10000)).to eq("10,000") 
	end
end