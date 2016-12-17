# Release 0
def sample_method
  z = 'test'
  3.times {|a| p "Prints out sample text #{a}"}
  yield(z)
end
sample_method {|x| p "This is a #{x}!"}


# Release 1
food = ["pizza", "hamburger", "lasagna", "steak"]

roles = {
  johnny_depp: "Pirates of the Carribean",
  orlando_bloom: "Pirates of the Carribean",
  keith_richards: "Pirates 2",
  denzel_washington: "Training Day"
}

p food # Print food array

food.each {|x| p "I like #{x.reverse}."} # Print food array elements backwards

p food # Print food array (unchanged)

food.map! {|type| p "#{type.upcase}!!!"} # Print each element in upper case with excalamation points

p food # Print new mapped array

roles.each {|actor, movie| puts "#{actor} was in #{movie}."} # Print each key/value pair of hash

p roles # Print key/value pairs


# Release 2
arr = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
hsh = {a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8}

p arr.delete_if {|x| x < 4} # Iterate through the elements, deleting any that are less than 4
p hsh.delete_if {|key, value| value > 6} # Iterate through the elements, deleting any with values that are greater than 6

p arr.keep_if {|x| x >= 8} # Keep only the elements that are greater than or equal to 8
p hsh.keep_if {|key, value| value > 1} # Iterate through the elements, keeping any with values greater than 1

p arr.select {|x| x % 3 == 0} # Select only the elements where the value is 0 when divided by 3
p hsh.select {|key, value| key.to_s == 'c'} # Select only the element where the string conversion of the key is equal to 'c'

p arr.drop_while {|x| x < 16} # Remove items until the condition in the block evaluates to false (while x < 16), then stop
p hsh.drop_while {|key, value| value < 5} # Remove items until the condition in the block evaluates to false (while value < 5), then stop