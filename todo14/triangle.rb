class TriangleError < StandardError
end

class Triangle
	require 'debugger'

	attr_accessor :side_a, :side_b, :side_c, :sides

	def initialize(side_a, side_b,side_c)
		@side_a = side_a
		@side_b = side_b
		@side_c = side_c
		@sides = [side_a, side_b, side_c]
	end

	def kind
		sum = side_a + side_b

		if sides.any? {|side| side < 0}
			raise TriangleError
		end

		if sum < side_c
			raise TriangleError
		end

		if sides.inject{|sum,x| sum + x } == 0
			raise TriangleError
		end

		if side_a == side_b && side_b == side_c
			return :equilateral
		end

		if side_a != side_b && side_b != side_c && side_a != side_c
			return :scalene
		end

		if side_a == side_b || side_b == side_c || side_a == side_c
			return :isosceles
		end



		
	end
end