# instructions: implement Array.uniq

class Array

  def uniq
  	unique_array = []
    self.each {|x| unique_array << x unless unique_array.include? x}
  	unique_array
  end

end