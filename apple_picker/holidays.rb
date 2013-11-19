# # Apple Picker

# ## Instructions

# # Create a method, `apple_picker`, that will pick all the apples out of an array. Implement this only using `each`.

# # ```ruby
# # apple_picker(["apple", "orange", "apple"]) #=> ["apple", "apple"]
# # ```

# # ## Challenge
# # Implement it with `collect` and then implement it with `select`. Write a sentence about how `select` differs from `collect`.

def apple_picker(fruits)
  apple_array = []
  fruits.each do |fruit|
    if fruit == "apple"
      apple_array << fruit
    end
  end
  apple_array
end

apple_picker(["apple", "orange", "apple"])

# # Holiday Suppliers

# You have a bunch of decorations for various holidays organized by season.

# ```ruby
holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :forth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}
# ```
# ## Questions

# 1. How would you access the second supply for the forth_of_july?
# ex: `holiday_supplies[:spring][:memorial_day][0]`
holiday_supplies[:summer][:forth_of_july][1]

#

# 2. Add a supply to a Winter holiday.
holiday_supplies[:winter][:christmas] << "Santa"

# 3. Add a supply to memorial day.

holiday_supplies[:spring][:memorial_day] << "Dranks"

# 4. Add a new holiday to any season with supplies.

holiday_supplies[:summer][:Keef_Bday] = []
holiday_supplies[:summer][:Keef_Bday] << "Foodz"

# 5. Write a method to collect all Winter supplies from all the winter holidays.
# ex: `winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]`

puts "Winter Supplies"
def winter_suppliers(holiday_supplies)
  winter_supply_array = []
  holiday_supplies.each do |season, holiday_hash| 
    if season == :winter
      holiday_hash.each do |day, supply|
        winter_supply_array << supply
      end
    end
  end
  winter_supply_array
end

puts winter_suppliers(holiday_supplies)
puts "\n"

# 6. Write a loop to list out all the supplies you have for each holiday and the season.

# Output:
# ```
# Winter:
#   Christmas: Lights and Wreath
#   New Years: Party Hats
# ```

puts "Season: Holiday: Supplies"
holiday_supplies.each do |season, holiday_hash| 
    puts season.to_s + ": "
      holiday_hash.each do |day, supply|
        print day.to_s + ": " 
        supply.each do |supply| 
          print supply.to_s + " "
        end
        puts "\n"
      end
end
puts "\n"
  
# 7. Write a method to collect all holidays with BBQ.

# `holidays_with_bbqs(holiday_supplies) #=> [:fourth_of_july, :memorial_day]`

def holidays_with_bbqs(holiday_supplies)
  bbqs_array = []
  holiday_supplies.each do |season, holiday_hash| 
    holiday_hash.each do |day, supplies| 
      supplies.each do |supply| 
        if supply == "BBQ"
          bbqs_array << day 
        end
      end
    end
  end
bbqs_array
end

puts "Holidays with BBQ"
puts holidays_with_bbqs(holiday_supplies)