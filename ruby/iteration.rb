# Release 0
def sample_method
	x = 6
	3.times{ |x| p "prints out sample text #{x}"}
	yield(x)
end

sample_method { |x| p "this is #{x}" }

# Release 1
food = ["pizza", "hamburger", "lasagna", "steak"]

roles = {
	johnny_depp: "Pirates of the Carribean",
	orlando_bloom: "Pirates of the Carribean",
	keith_richards: "Pirates 2",
	denzel_washington: "Training Day"
}


food.each do |x| puts x
	end
puts food


p food.map! {|type| type.upcase}


p roles.each {|actor, movie| puts "#{actor} was in #{movie}."}


# Release 2
p food.delete_if {|food| food.length < 7}


p roles.keep_if {|actor, movie| movie.length < 10}


p roles.select {|a, m| a.to_s[0..2] == "joh"}


p food.drop_while {|food| food.include?("z")}

arr = [2, 4, 6, 8, 10]
hsh = {a:1, b:2, c:3, d:4, e:5}

p arr.drop_while {|x| x < 6}
p hsh.drop_while {|x, y| y < 3}