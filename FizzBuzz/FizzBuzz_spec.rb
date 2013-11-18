require_relative 'FizzBuzz'

describe "#FizzBuzz" do
it "should return FizzBuzz when number mod 15 == 0" do 
	expect(FizzBuzz(75)).to eq("FizzBuzz")
end

it "should return FizzBuzz when number mod 3 == 0" do 
	expect(FizzBuzz(9)).to eq("Fizz")
end

it "should return FizzBuzz when number mod 10 == 0" do 
	expect(FizzBuzz(10)).to eq("Buzz")
end

it "should return number when number is given" do 
	expect(FizzBuzz(7)).to eq(7)
end

it "should return number is a Integer" do 
	expect(FizzBuzz(7)).to be_a(Integer)
end

end
