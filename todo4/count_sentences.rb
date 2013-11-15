# Write a method on String called `count_sentences` that returns the number of
# sentences in the string it is called on

class String
  def count_sentences
    counter = 0
    self.split(".").each {|x| counter+=1}
	counter
  end
end