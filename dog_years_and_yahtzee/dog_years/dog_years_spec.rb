require_relative 'dog_years.rb'

describe "#age_in_years" do
	it "should return the number given as argument" do
		expect(age_in_years(7)).to eq(7)
	end
end

describe "#age_in_days" do
	it "should return the number given as argument times 365" do
		expect(age_in_days(2)).to eq(730)
	end
end

describe "#age_in_dog_years" do
	it "should return the number given as argument times 7" do
		expect(age_in_dog_years(2)).to eq(14)
	end
end