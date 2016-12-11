puts "What is the hamster's name?"
name = gets.chomp

puts "Volume level? (1-10)"
vol = gets.to_i

puts "Fur color?"
color = gets.chomp

puts "Is the hamster a good candidate for adoption? (y/n)"
good = gets.chomp.downcase
if good == "y"
	good = "a lovable lump"
elsif good == "n"
	good = "a work in progress"
else good = "of 'status: unknown'"
end

puts "What is the hamster's estimated age?"
age = gets.chomp
if age.empty?
	age = nil
else age = age.to_i
end

puts "The hamster's name is #{name}."
puts "The hamster's volume level is #{vol}."
puts "It has #{color} fur."
puts "You said this hamster is #{good}."

if age == nil
	puts "Nobody knows the age of this sad sack."
else puts "This happy hamster is #{age} years old."
end