# Prompt the user for all of this information:
# The client's name, age, number of children, decor theme, and pets
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the user is finished.
# Give the user the opportunity to update a key. 
# Print the updated version of the hash, and exit the program.

# Ask for total number of clients
puts "How many clients to process?"
client_total = gets.to_i

# Create array to store client names
client_name = []

# Loop through each client
client_total.times do
  
  # Create hash to store user input
  client_data = {}
  
  # Get user information to store in hash
  puts "Okay! Lemme get their name:"
  client_data[:name] = gets.chomp
  
  puts "They look #{rand(20...60)}, but what's their real age?"
  client_data[:age] = gets.to_i
  
  puts "How many brats?"
  client_data[:brats] = gets.to_i
  
  puts "What kind of theme they want?"
  client_data[:theme] = gets.chomp
  
  puts "Have any pets? (y/n)"
  client_data[:pets] = gets.chomp.downcase == "y" ? true : false
  
  # Display hash values
  puts "Let me get this straight:"
  client_data.each {|key, value| puts "#{key}: #{value}"}
  
  puts "Did you mess up? (y/n)"
  mistake = gets.chomp.downcase == "y" ? true : false
  
  # If hash values incorrect, update values with user input.
  if mistake == true
    puts "Gah! Of course you did. Now what do you need to change? (name, age, brats, pets, or theme)"
    update = gets.chomp.to_sym
    puts "Enter the correct info:"
    new_value = gets.chomp
    client_data[update] = new_value
    puts "Finally!"

    # Display updated hash to user
    client_data.each {|key, value| puts "#{key}: #{value}"}
    puts "Their fate is sealed!"
  else
    puts "Muahahaha!"
  end

  # Shovel key value from hash into array
  client_name << client_data[:name]
end

# Display list of each client in array to user
puts "Today's List of Suckers:"
client_name.each {|name| puts "#{name}!"}
puts "Now all their monies are belong to us!!!"