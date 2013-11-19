# Collections Practice
my_array = ["blake", "ashley", "scott"]
# 1. sort the following array in ascending order
#   ["blake", "ashley", "scott"]
my_array.sort
# 2. sort the following array in descending order
#   ["blake", "ashley", "scott"]
my_array.sort.reverse
# 3. put the following array in reverse order
#   ["blake", "ashley", "scott"]
my_array.reverse
# 4. grab the second element in the array
#   ["blake", "ashley", "scott"]
my_array[1]
# 5. print each element of the array to the console
#   ["blake", "ashley", "scott"]
my_array.each {|x| puts x}
# 6. create a new array in the following order
#   ["blake", "ashley", "scott"] 
#   should transform into
#   ["blake", "scott", "ashley"]
nu_array = []
nu_array << my_array[0]
nu_array << my_array[2]
nu_array << my_array[1]
# 7. using the following array create a hash where the elements in the array are the keys and the values of the hash are those elements with the 3rd character changed to a dollar sign.
#   ["blake", "ashley", "scott"]
my_hash = {}
my_array.each do |x| 
  temp = x.clone
  x[2] = "$" 
  my_hash[temp] = x
end
# 8. create a hash with two keys, "greater_than_10", "less_than_10" and their values will be an array of any numbers greater than 10 or less than 10 in the following array
#   [100, 1000, 5, 2, 3, 15, 1, 1, 100 ]
nu_hash = {:greater_than_10 => [], :less_than_10 => []}
num_array =[100, 1000, 5, 2, 3, 15, 1, 1, 100 ]
num_array.each { |x| x > 10 ? nu_hash[:greater_than_10] << x : nu_hash[:less_than_10] << x}
# 9. find all the winners and put them in an array
#   {:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"}
the_hash = {:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"}
winner_array = []
the_hash.each {|k,v| winner_array << k if v == "winner"}
# 10. add the following arrays
#   [1,2,3] and [5,9,4]
array_1 = [1,2,3] 
array_2 = [5,9,4]
add_array = []
add_array << array_1 [0] + array_2[0] << array_1 [1] + array_2[1] << array_1 [2] + array_2[2]
# 11. find all words that begin with "a" in the following array
#   ["apple", "orange", "pear", "avis", "arlo", "ascot" ]
word_array = ["apple", "orange", "pear", "avis", "arlo", "ascot" ]
word_array.each {|x| puts x if x[0] == "a"}
# 11. sum all the numbers in the following array
#   [11,4,7,8,9,100,134]
num_array_2 = [11,4,7,8,9,100,134]
sum = 0
num_array_2.each {|x| sum+=x}
# 12. Add an "s" to each word in the array except for the 2nd element in the array?
#   ["hand","feet", "knee", "table"]
word_array_2 = ["hand","feet", "knee", "table"]
count = 0;
word_array_2.each do |x|
  count += 1
  next if count == 2 
    word_array_2[count-1] = x + "s"
end

# CHALLENGE

# word count

# "The summer of tenth grade was the best summer of my life.  I went to the beach everyday and we had amazing weather.  The weather didnt really vary much and was always pretty hot although sometimes at night it would rain.  I didnt mind the rain because it would cool everything down and allow us to sleep peacefully.  Its amazing how much the weather affects your mood.  Who would have thought that I could write a whole essay just about the weather in tenth grade.  Its kind of amazing right?  Youd think for such an interesting person I might have more to say but you would be wrong"

# Count how many times each word appears in my story.
# Tip: You'll need to use Hash.new(0) to do this rather than creating a hash using literal syntax like {}.
story = %w{The summer of tenth grade was the best summer of my life.  I went to the beach everyday and we had amazing weather.  The weather didnt really vary much and was always pretty hot although sometimes at night it would rain.  I didnt mind the rain because it would cool everything down and allow us to sleep peacefully.  Its amazing how much the weather affects your mood.  Who would have thought that I could write a whole essay just about the weather in tenth grade.  Its kind of amazing right?  Youd think for such an interesting person I might have more to say but you would be wrong}
#coverts string to array of words
word_count_hash = Hash.new(0)
story.each { |word| word_count_hash[word] +=1 }
	
puts word_count_hash

# song library

# convert the following array of song titles
  
#   ["dave matthews band - tripping billies", "dave matthews band - #41", "calvin harris - some techno song", "avicii - some other dance song", "oasis - wonderwall", "oasis - champagne supernova"]

# to a nested hash of the form
# {:artist1 => :songs => [], :artist2 => :songs => []}
# []
# song_artist_array =["dave matthews band - tripping billies", "dave matthews band - #41", "calvin harris - some techno song", "avicii - some other dance song", "oasis - wonderwall", "oasis - champagne supernova"]
# song_hash = {}
# songs = []
# song_array.each do |x|
# 	artist = x.split("-")[0]
# 	song = x.split("-")[1]

# 	song_hash[artist] = songs << song
	
# end
# puts song_hash