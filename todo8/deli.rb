class Deli
	attr_accessor :line

	def initialize
		@line = []
	end

	def take_a_number(name)
		#@line.length is 3 for some reason
		@line << "#{@line.length+1}. #{name}"
		# @line.each_with_index do |value, index|
		# 	@line[index] = "#{index+1}. #{name}"
		# end 
	end

	def now_serving
		num_regex = /\d+. /
		name_n_num = @line.delete_at(0)
		name = name_n_num.sub num_regex, ''
		name
	end

end #end of class