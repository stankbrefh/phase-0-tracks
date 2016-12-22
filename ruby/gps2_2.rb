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