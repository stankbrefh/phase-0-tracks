# Use split to create an array containing the element(s) of the user's input. 
# Invoke block once for each element in that array using map. 
# The block calls the translate method on the element and stores the new values in the array.
# The order of the elements in that array is reversed and then the elements are joined together.

# Get input from user
puts 'name?'
name = gets.chomp

# Method to change user's name
def aliaser(name)
  consonants = 'bcdfghjklmnpqrstvwxyz'
  key = 'cdfghjklmnpqrstvwxyzb'

  # Replace (translate) characters from the first argument with characters (of the same index) from the second argument 
  name = name.downcase.split.map! {|name| name.tr('aeiou', 'eioua').tr(consonants, key).capitalize}
  name.reverse.join(' ')
end

# Display new alias to the user.
puts aliaser(name)