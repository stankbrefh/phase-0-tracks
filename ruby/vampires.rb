# Receiving user input
puts "Greetings! How many employess are to be processed?"
emp_total = gets.to_i

# Loop through questions for each employee
while emp_total > 0
# Can also use
# emp_total.times do
# but satisfying rubric requirement for `>`

	puts "What is your name?"
	emp_name = gets.chomp

	puts "How old are you?"
	emp_age = gets.to_i

	puts "What year were you born?"
	birth_year = gets.to_i

	puts "Our company cafeteria serves garlic bread. Should we order you some? (Y/N)"
	garlic = gets.chomp.upcase
	until (garlic == "Y" || garlic == "N")
		puts "Please enter 'Y' or 'N'." 
		garlic = gets.chomp.upcase
	end

	puts "Would you like to enroll in the company's health insurance? (Y/N)"
	insurance = gets.chomp.upcase
	until (insurance == "Y" || insurance == "N")
		puts "Please enter 'Y' or 'N'." 
		insurance = gets.chomp.upcase
	end

	# Assign boolean operators to user's input
	real_year = Time.now.year - emp_age
	if real_year == birth_year
	  real_year = true
	else real_year = false
	end

	if garlic == "Y"
		garlic = true
	else garlic = false
	end

	if insurance == "Y"
		insurance = true
	else insurance = false
	end

	# Check for allergies
	puts "Please list ALL allergies, one at a time. Enter 'done' once you are finished."
	done = false
	until done
		allergy = gets.chomp.downcase
		break if allergy == "done"
		if allergy == "sunshine"
			done = true
		end
	end

	# Evaluate user responses
	verdict = nil
	verdict = "Probably not a vampire." if real_year && (garlic || insurance)
	verdict = "Probably a vampire." if !real_year && (!garlic || !insurance) || allergy == "sunshine"
	verdict = "Almost certainly a vampire." if !real_year && !garlic && !insurance
	verdict = "Definitely a vampire." if emp_name.downcase == "drake cula" || emp_name.downcase == "tu fang"
	verdict = "Results inconclusive." if verdict == nil

	# Display result to user
	puts verdict

	# Loop back through for remaining employees
	emp_total -= 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."