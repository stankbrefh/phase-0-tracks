# Read every letter in the string.
# Store each letter into a local variable.
# Push each letter to the next letter.
# Place it back to original string.
# Do each step for every letter in the string.
# Print back result.

def encrypt(string)
	index = 0
	while index < string.length
	if string[index] == "z"
	  string[index] = "a"
	elsif string[index] == " "
	  string[index]
	else
		string[index] = string[index].next
	end
		index += 1
	end
	return string
end

encrypt("abc")

def decrypt(string)
	password2 = ""
	temp = 0
	index = 0
	keystring = "abcdefghijklmnopqrstuvwxyz"
	while index < string.length
		temp = string[index]
		temp_index = keystring.index(temp)
		temp_index -= 1
		password2 [index] = keystring[temp_index]
		index += 1
	end
	return password2
end

decrypt("zabc")
decrypt(encrypt("swordfish"))

# First it encrypts "swordfish" and then returns that string of "txpsegjti"
# Then passes that string into the decrypt method,
# The decrypt method accepts the string and returns "swordfish".