puts "Greetings! How many employess are to be processed?"
emp_total = gets.chomp.to_i
emp_total.times do

puts "What is your name?"
emp_name = gets.chomp

puts "How old are you?"
emp_age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order you some? (Y/N)"
garlic_bread = gets.chomp.upcase
until (garlic_bread == "Y" or garlic_bread == "N")
	puts "Please enter 'Y' or 'N'." 
	garlic_bread = gets.chomp.upcase
end

if garlic_bread == "Y"
	garlic_bread = true
else garlic_bread = false
end

puts "Would you like to enroll in the company's health insurance? (Y/N)"
health_insurance = gets.chomp.upcase
until (health_insurance == "Y" or health_insurance == "N")
	puts "Please enter 'Y' or 'N'." 
	health_insurance = gets.chomp.upcase
end

if health_insurance == "Y"
	health_insurance = true
else health_insurance = false
end

puts "Please list ALL allergies, one at a time. Enter 'done' once you are finished."
	done = false
	until done
		allergy = gets.chomp.downcase
		break if allergy == "done"
		if allergy == "sunshine"
			done = true
		end
	end

verdict = nil
verdict = "Probably not a vampire." if birth_year == Time.now.year - emp_age && (garlic_bread || health_insurance)
verdict = "Probably a vampire." if birth_year != Time.now.year - emp_age && (!garlic_bread || !health_insurance) || allergy == "sunshine"
verdict = "Almost certainly a vampire." if birth_year != Time.now.year - emp_age && (!garlic_bread || !health_insurance)
verdict = "Definitely a vampire." if emp_name.downcase == "drake cula" || emp_name.downcase == "tu fang"
verdict = "Results inconclusive." if verdict == nil

puts verdict
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."