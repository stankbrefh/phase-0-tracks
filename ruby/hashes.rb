# Prompt the user for all of this information:
# Their name, age, number of children, decor theme, and so on
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the user has answered all of the questions.
# Give the user the opportunity to update a key. 
# If the user says "none", skip it, else enter a new value and update the key.
# Print the latest version of the hash, and exit the program.

client_data = {}

puts "Hey there! Lemme get their name:"
client_data[:name] = gets.chomp

puts "They look #{rand(20...60)}, but what's their real age?"
client_data[:age] = gets.to_i

puts "How many brats?"
client_data[:brats] = gets.to_i

puts "What kind of theme they want?"
client_data[:theme] = gets.chomp

puts "Have any pets? (y/n)"
client_data[:pets] = gets.chomp.downcase == "y" ? true : false

puts "Let me get this straight:"
client_data.each {|key, value| puts "#{key}: #{value}"}

puts "Did you mess up? (y/n)"
mistake = gets.chomp.downcase == "y" ? true : false

if mistake == true
  puts "Gah! Of course you did. Now what do you need to change? (name, age, brats, pets, or theme)"
  update = gets.chomp.to_sym
  puts "Enter the correct info:"
  new_value = gets.chomp
  client_data[update] = new_value
  puts "Finally!"
  client_data.each {|key, value| puts "#{key}: #{value}"}
  puts "Their fate is sealed!"
else
  puts "Muahahaha!"
end

puts "Now all their monies are belong to us!!!"