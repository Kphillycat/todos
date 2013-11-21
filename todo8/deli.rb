class Deli
	attr_accessor :line

	def initialize
		@line = []
	end

	def take_a_number(name)
		@line.each_with_index do |value, index|
			@line[index] = "#{index}. #{name}"
		end 
	end

	def now_serving
	end
end