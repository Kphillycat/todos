# # Binary Secret Handshake

# > There are 10 types of people in the world: Those who understand binary, and those who don't.

# You and your fellow flatirons are of those in the "know" when it comes to binary decide to come up with a secret "handshake".

# ```
# 1 (1) = wink
# 10 (2) = double blink
# 100 (4) = close your eyes
# 1000 (8) = jump


# 10000 = Reverse the order of the operations in the secret handshake.
# ```

# Write a program that will convert a binary number, represented as a string (i.e. "101010"), and convert it to the appropriate sequence of events for a secret handshake.


# ```
# handshake = SecretHandshake.new "1001"
# handshake.commands # => ["wink","jump"]

# handshake = SecretHandshake.new "11001"
# handshake.commands # => ["jump","wink"]
# ```

# The program should consider strings specifying an invalid binary as the value 0.

class SecretHandshake

  def initialize(secret_word)
    @secret_word = secret_word
    @command_words = ["wink","double blink","close your eyes","jump"]
  end

def commands
  converted_array = []
  binary_read = @secret_word.reverse

  if binary_read.length >= 5
    reverse = true
    binary_read = binary_read[0..binary_read.length-2]
  else 
    reverse = false
  end
  
  
  binary_places = {}
  i = 0
  binary_read.each_char do |char|
    if char == "1" 
      binary_places[i] = true
    elsif char == "0"
      binary_places[i] = false
    end
    i+=1
  end
      
  binary_places.each do |place, bool_value|
    if bool_value == true
      converted_array << @command_words[place]
    end
  end

  if reverse == true
    converted_array.reverse!
  end

  converted_array
  end
end

test_handshake = SecretHandshake.new("11001")
puts test_handshake.commands