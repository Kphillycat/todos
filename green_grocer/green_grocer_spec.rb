require './green_grocer'

describe "#checkout" do
  test_coupons = [  {:item=>"AVOCADO", :num=>2, :cost=>5.00},
          {:item=>"BEER", :num=>2, :cost=>20.00},
          {:item=>"CHEESE", :num=>3, :cost=>15.00}]

  test_cart = [{"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 2}]

  it "should return a total value of cart" do
		expect(checkout(test_cart, test_coupons)).to eq(5)
  end

  it "should return a value of 5 for 2 avocados" do
		expect(checkcoupon("AVOCADO", 2, test_coupons)).to eq(5)
  end
end