puts "What's your birthday (mm/dd/yyyy)?"
bday = gets.chomp
day = Time.new.to_a[3]
month = Time.new.to_a[4]
year = Time.new.to_a[5]
bday_arr = bday.split("/")
if month == bday_arr[0].to_i && day == bday_arr[1].to_i && year == bday_arr[2].to_i
	puts "Happy Birthday!"
else
	puts "....mmmmk"
end