require_relative 'yahtzee.rb'

describe "#roll_dice" do
	it "should return a new array" do
		expect(roll_dice).to be_a(Array)
	end
end

describe "#win?" do
	it "should return a true for an array of duplicated values or of size one" do
		expect(win?([9,9,9,9,9])).to eq(true)
	end
end