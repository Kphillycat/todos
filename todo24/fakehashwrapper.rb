# Let's make an object that behaves like a hash today!

# I'd like to be able to find keys in the hash regardless of whether they are strings or symbols.

# For example

# obj = {:blake => "the best"}
# obj["blake"] #=> "the best"

# I'd like to be able to set values in our fake hash.
# I'd like to be able to find all values that have keys beginning with the letter a.
# I'd like to be able to get all the keys in the hash in a descending alphabetized array.
require 'debugger'

class FakeHashWrapper
	attr_accessor :key, :value, :hashes
	def initialize(*args)
		@hashes = *args
	end

	def [](given_key)
		hashes.each do |hash|
			return hash[given_key]
		end
	end

	def find_val_beginning_with(given_key)
		val_array = []
		hashes.first.keys.each do |key|
			val_array << hashes.first[key] if key[0][0].to_s == given_key
		end
		val_array
	end

	def desc_alpha_keys
		key_array = []
		key_array = hashes.first.keys.each 
		key_array.sort.reverse
	end

end