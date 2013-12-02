SUB_HASH = {"to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}

def shorten_tweet(tweet)
	tweet.gsub!("to","2")
	tweet.gsub!("two","2")
	tweet.gsub!("too","2")
	tweet.gsub!("for","4")
	tweet.gsub!("four","4")
	tweet.gsub!("be","b")
	tweet.gsub!("you","u")
	tweet.gsub!("at","@")
	tweet.gsub!("and","&")
	tweet
	# tweet.split(" ").each do |word|
	# 	word.gsub()
	# end
end

puts shorten_tweet("Hello to you, I'm at home")