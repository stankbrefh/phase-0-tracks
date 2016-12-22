# Method to create a list
# input: string of items from user separated by spaces (example: "carrots apples cereal pizza")
# steps: initialize hash
  # set grocery list equal to the hash
  # take each item from the list and break into indiviudal items
  # set default quantity to 1 for each item on list
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity 
# steps: create method that takes list items and add item to it with quantity of item
# output: print of the hash with the new items

# Method to remove an item from the list
# input: list and item
# steps: remove key value pair from hash
# output: print of the hash with the remaining items

# Method to update the quantity of an item
# input: list, item, and quantity
# steps: same as adding item, updating will overwrite existing data
# output: print out the updated hash

# Method to print a list and make it look pretty
# input: list
# steps: iterate through hash and print key value pairs
# output: print result separately

def groceries(list)
  grocery_list = Hash.new()
  each_item = list.split(' ')
  each_item.each {|item|grocery_list[item] = 1}
  grocery_list # => Maria, this was the reason we had an error;
  # we forgot to tell Ruby to return the hash, so Ruby returned 
  # line 32 (the array) instead...
end

def add_items(list, item, qty = 1)
  list[item] = qty
end

def remove(list, item)
  list.delete(item)
end

def update(list, item, qty)
  list[item] = qty
end

def printout(list)
  list.each {|item, qty| puts "#{item}: #{qty}"}
end

final_list = groceries('Carrots Apples Cereal Pizza')

# DRIVER CODE
add_items(final_list, 'Lemonade', 2)
add_items(final_list, 'Tomatoes', 3)
add_items(final_list, 'Onions', 1)
add_items(final_list, 'Ice Cream', 4)
remove(final_list, 'Lemonade')
update(final_list, 'Ice Cream', 1)

printout(final_list)

# REFLECTION
# What did you learn about pseudocode from working on this challenge?
# The better the pseudocode, the easier it becomes to create the logic for the code.
# It is a good way to break a big program into many smaller, easier to see sections, 
# which is much more manageable.

# What are the tradeoffs of using arrays and hashes for this challenge?
# Arrays are ordered and can only store an integer-indexed collection, 
# but a hash can store key-value pairs.

# What does a method return?
# A method implicitly returns the evaluated result of the last line that is executed, 
# unless an explicit return comes before it.

# What kind of things can you pass into methods as arguments?
# Methods can accept all kinds of objects as arguments (hashes, arrays, strings, 
# integers, booleans, et cetera).

# How can you pass information between methods?
# One way is by passing the variables into the method as an argument.
# Another way is by creating variables with greater scope (id est global variables).

# What concepts were solidified in this challenge, and what concepts are still confusing?
# This challenge definitely solidified the concept of implicit and explicit returns in Ruby. 
# It also worked to visualize the scope of variables.