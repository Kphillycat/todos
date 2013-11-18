require_relative 'yahtzee'

describe "#roll_dice" do
	#roll_dice_Array = roll_dice

	it "should return a new array" do
		expect(roll_dice).to be_a(Array)
	end
	
	it "should return a new array of length 5" do
		expect(roll_dice.length).to eq(5)
	end

	it "should return a number between 1 and 6" do
		roll_dice.each do |die|
			expect(die).to be > 0
			expect(die).to be < 7
		end
	end
end

describe "#win?" do
	it "should return a true for an array of duplicated values or of size one" do
		expect(win?([9,9,9,9,9])).to eq(true)
	end
end