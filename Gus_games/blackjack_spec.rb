require './blackjack'

describe "#card" do
	it "Should return a number between 1 and 11" do
		expect(card).to be > 1
		expect(card).to be < 11
	end
end