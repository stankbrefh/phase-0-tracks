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
# steps: 
# output: 

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

def groceries(list)
  grocery_list = Hash.new()
	each_item = list.split(' ')
	each_item.each {|item|grocery_list[item] = 1}
  grocery_list
end

p final_list = groceries('carrots apples cereal pizza')

def add_items(list, item, qty = 1)
  list[item] = qty
  p list
end

add_items(final_list, 'milk', 2)

