# Use split to create an array containing the element(s) of the user's input. 
# Invoke block once for each element in that array using map. 
# The block calls the translate method on the element and stores the new values in the array.
# The order of the elements in that array is reversed and then the elements are joined together.

# Method to change user's name
def aliaser(name)
  
  # Define variables 
  consonants = 'bcdfghjklmnpqrstvwxyz'
  key = 'cdfghjklmnpqrstvwxyzb'

  # Replace (translate) characters from the first argument with characters (of the same index) from the second argument 
  name = name.downcase.split.map! {|name| name.tr('aeiou', 'eioua').tr(consonants, key).capitalize}
  
  # Reverse elements and join together
  name.reverse.join(' ')
end

# Initialize database hash and name variable
database = {}
name = ' '

# Get input from user, loop until user exits 
puts 'To get started, enter a name to receive alias.'
puts '(Once finished, type \'quit\' or hit return key)'
until name.empty? || name.downcase == 'quit'
  puts 'Name:'
  name = gets.chomp

  # Display current alias of user and store values in database
  if !name.empty? && name.downcase != 'quit'
    codename = aliaser(name)
    puts "Your alias is: #{codename}."
    database.store(name, codename)
  end
end

# Display contents of data structure to user
if !database.empty?
  puts 'List of ALL possible aliases for current session:'
  database.each {|name, codename| puts "#{name} => #{codename}"}
else puts 'Insufficient data received!'
end

puts 'Goodbye.'