puts "Greetings! How many employess are to be processed?"
emp_total = gets.chomp.to_i
emp_total.times do

puts "What is your name?"
emp_name = gets.chomp

puts "How old are you?"
emp_age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order you some? [Y/N]"
wants_garlic_bread = gets.chomp.upcase
until (wants_garlic_bread == "Y" or wants_garlic_bread == "N")
    puts "Please enter Y or N." 
    wants_garlic_bread = gets.chomp.upcase
end

if wants_garlic_bread == "Y"
	wants_garlic_bread = true
else wants_garlic_bread = false
end

puts "Would you like to enroll in the company's health insurance? [Y/N]"
wants_health_ins = gets.chomp.upcase
until (wants_health_ins == "Y" or wants_health_ins == "N")
    puts "Please enter Y or N." 
    wants_health_ins = gets.chomp.upcase
end

if wants_health_ins == "Y"
	wants_health_ins = true
else wants_health_ins = false
end

result = nil
result = "Probably not a vampire." if birth_year == Time.now.year - emp_age && (wants_garlic_bread || wants_health_ins)
result = "Probably a vampire." if birth_year != Time.now.year - emp_age && (!wants_garlic_bread || !wants_health_ins)
result = "Almost certainly a vampire." if birth_year != Time.now.year - emp_age && (!wants_garlic_bread || !wants_health_ins)
result = "Definitely a vampire." if emp_name.downcase == "drake cula" || emp_name.downcase == "tu fang"
result = "Results inconclusive." if result == nil

puts result