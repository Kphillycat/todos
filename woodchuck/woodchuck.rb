class Woodchuck
  attr_accessor :chuck_count

  @@woodchuck_count = 0
  WOODCHUCKS = []

  def initialize
    @chuck_count = 0
    @@woodchuck_count += 1
    WOODCHUCKS << self
  end

  def chuck_wood
    @chuck_count += 1
  end

  def self.woodchuck_count
    @@woodchuck_count
  end

end

woodchuck_army = []
total_chucked_wood = 0

rand(1..10).times do 
  woodchuck_army << Woodchuck.new
end

woodchuck_army.each do |woodchuck|
  rand(1..10).times do
    woodchuck.chuck_wood
  end
  total_chucked_wood += woodchuck.chuck_count
end

puts "Total chucked wood is #{total_chucked_wood}"

# Woodchuck.new
# Woodchuck.new
# Woodchuck.new
# Woodchuck.new

# Woodchuck::WOODCHUCKS.each do |woodchuck|
#   woodchuck.chuck_wood
# end

# puts Woodchuck::WOODCHUCKS.inspect