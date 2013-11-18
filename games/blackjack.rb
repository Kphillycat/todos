#Blackjack!

##Objective
#Practice contional logic including nested conditionals. 
#Use methods to keep our code DRY.

##Instructions
#We are going to build a command line blackjack game.  A player gets dealt two cards which have values between 1-11.  After they get dealt two cards you should show them the total score of their cards and ask them if they want to hit or stay. A player is allowed to "hit" up to two times.  After each hit you should ask if they want to hit or stay and display the total value of their cards. If they don't want to hit, and they are not at 21 they lose.  Your program should tell them they lose and exit.

#Note:  To take input from the person "playing" the game your program will have to use the Ruby method "gets".

##Challenge
#After successfully completing the previous game (there should be a commit with a working version of this game), alter the game so that a player can "hit" as many times as they want.


hit_count = 0
cards = [rand(11)+1, rand(11)+1]
sum = cards[0] + cards[1]
puts "The total score of your cards is " + sum.to_s
puts "Would you like to hit?"
hit_ans = gets.chomp.downcase
while hit_ans == "yes" && hit_count < 2
	nu_card = rand(11)+1
	cards << nu_card
	hit_count += 1
	sum += nu_card
	puts "The total score of your cards is " + sum.to_s
	puts "Would you like to hit?"
	hit_ans = gets.chomp.downcase
end

if sum > 21
	puts "Winner! With a total of " + sum.to_s
else
	puts "Sorry, you lose with a total of " + sum.to_s
end