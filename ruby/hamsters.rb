puts "What is the hamster's name?"
name = gets.chomp

puts "Volume level? (1-10)"
volume = gets.to_i

puts "Fur color?"
fur = gets.chomp

puts "Is the hamster a good candidate for adoption? (y/n)"
good_candidate = gets.chomp.downcase
if good_candidate == "y"
  good_candidate = "lovable"
elsif good_candidate == "n"
  good_candidate = "a work in progress"
else
  good_candidate = "'status: unknown'"
end


puts "What is the hamster's estimated age?"
age = gets.chomp
if age.empty?
  age = nil
else
  age = age.to_i
end

puts "The hamster's name is #{name}."
puts "The hamster's volume level is #{volume}."
puts "The hamster has #{fur} fur."
puts "You said this hamster is #{good_candidate}."
puts "This hamster is #{age}."