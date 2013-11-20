ITEMS = [  {"AVOCADO" => {:price => 3.00, :clearance => true}},
          {"KALE" => {:price => 3.00,:clearance => false}},
          {"BLACK_BEANS" => {:price => 2.50,:clearance => false}},
          {"ALMONDS" => {:price => 9.00, :clearance => false}},
          {"TEMPEH" => {:price => 3.00,:clearance => true}},
          {"CHEESE" => {:price => 6.50,:clearance => false}},
          {"BEER" => {:price => 13.00, :clearance => false}},
          {"PEANUTBUTTER" => {:price => 3.00,:clearance => true}},
          {"BEETS" => {:price => 2.50,:clearance => false}}]

COUPS = [  {:item=>"AVOCADO", :num=>2, :cost=>5.00},
          {:item=>"BEER", :num=>2, :cost=>20.00},
          {:item=>"CHEESE", :num=>3, :cost=>15.00}]

#randomly generates a cart of items
def generateCart
  cart = []
  rand(20).times do
      cart.push(ITEMS.sample)  
  end
  cart
end

#randomly generates set of coupons
def generateCoups
  coups = []
  rand(2).times do
      coups.push(COUPS.sample)
  end
  coups
end

def checkcoupon(food, quantity, coups)
	nu_cost = -1
	coups.each do |item|
		puts "item #{item}"
		item.any? do |key, value|
			  puts "coupon key #{key}"
			  puts "coupon value #{value}"			
			if food == value && quantity == item[:num]
				nu_cost = item[:cost] 

			end
		end
	end
	nu_cost
end

def checkout(cart, coups)
	##create a checkout method that calculates the total cost of the cart
	##when checking out, check the coupons and apply the discount if the proper number of items is present
	total_price = 0
	unit_price_less_than_five = true
	#change price to couponed price
	#checkcoupon("AVOCADO", 2, test_coupons)
	
	#check total of cart
	cart.each do |item|
		puts "second item #{item}"
		item.each_pair do |food, price_hash| 
			if price_hash.respond_to?('each_pair')
				price_hash.each_pair do |key, value|
					 #puts "key #{key}"
					 #puts "value #{value}"
					if key == :clearance && value == true #apply 20% discount
						item[food][:price] = item[food][:price] - (item[food][:price]*0.2)
					end
					if key == :price #sum total price
						total_price = total_price + value
						if value > 5 #check to see if every item is less than 5
							unit_price_less_than_five = false
						end
					end
			end
			end
		end
	end

	if unit_price_less_than_five
		total_price = total_price - 10 
	end
	total_price
end #end of method

	##if any of the items are on clearance add a 20% discount
	##if the customer has 2 of the same coupon, triple the discount
	##if none of the items purchased have a unit price greater than 5$ give the customer a 10$ discount off the whole cart

my_cart = generateCart
#my_cart =  [  {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}]
my_coupons = generateCoups

nu_cart = {}
#puts "my cart #{my_cart}"
my_cart.each do |item|
	#puts "Item #{item}"
	item.each_pair do |food, price_hash| 
		#puts "Food #{food}"
		
		if nu_cart[food].nil?
			nu_cart[food] = {} 			
		end
		if nu_cart[:count].nil?
			nu_cart[:count] = 0
		end

		nu_cart[:count] +=1
		price_hash.each_pair do |key, value|
			# puts "key #{key}"
			# puts "value #{value}"
			if key == :price
				value.to_i
			end
			nu_cart[food][key] = value 

		end
	end
end

# puts "nu_cart #{nu_cart}"
# nu_cart_array = []
# nu_cart_array << nu_cart
# puts "array #{nu_cart_array}"
# puts "total_price #{checkout(nu_cart_array, my_coupons)}"
# puts "new price #{checkcoupon("AVOCADO", 2, my_coupons)}"

