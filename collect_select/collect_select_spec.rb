require './collect_select'

describe Array,"#my_collect" do
	it "should return array with values changed based on block" do
		expect([1,2,3].my_collect{|x| x*2}).to eq([2,4,6])
	end
	
end

describe Array,"#my_select" do
	it "should return array only with values matching the block" do
		expect([1,2,3].my_select{|x| x.even?}).to eq([2])
	end
	
end