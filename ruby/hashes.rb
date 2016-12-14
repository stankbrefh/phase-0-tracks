# Prompt the user for all of this information:
# Their name, age, number of children, decor theme, and so on
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the user has answered all of the questions.
# Give the user the opportunity to update a key. 
# If the user says "none", skip it, else enter a new value and update the key.
# Print the latest version of the hash, and exit the program.

client_data = {}

puts "Hey there! Lemme get your name:"
client_data[:name] = gets.chomp

puts "You look #{rand(20...60)}, but what's your real age?"
client_data[:age] = gets.to_i

puts "How many brats?"
client_data[:brats] = gets.to_i

puts "What kind of theme you want?"
client_data[:theme] = gets.chomp

puts "Have any pets (y/n)?"
client_data[:pets] = gets.chomp.downcase == "y" ? true : false

puts client_data.values