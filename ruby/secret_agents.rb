# Read every letter in the string.
# Store each letter into a local variable.
# Push each letter to the next letter.
# Place it back to original string.
# Do each step for every letter in the string.
# Print back result.

# METHOD DECLARATIONS
# Encrypts string
def encrypt(string)
	i = 0
	# Loop over string's letters
	while i < string.length
	# If letter is 'z' set it to 'a'
	if string[i] == "z"
		string[i] = "a"
	# If there is a space, do nothing
	elsif string[i] == " "
		string[i]
	else
	# Otherwise set the current letter to the next letter
		string[i] = string[i].next
	end
		i += 1
	end
	# Return the result
	return string
end

# Decrypts string
def decrypt(string)
	password = ""
	temp = 0
	i = 0
	keystring = "abcdefghijklmnopqrstuvwxyz"
	while i < string.length
		temp = string[i]
		temp_index = keystring.index(temp)
		temp_index -= 1
		password[i] = keystring[temp_index]
		i += 1
	end
	return password
end

# encrypt("abc") => "bcd"
# encrpyt("zed") => "afe"
# decrypt("bcd") => "zed"
# decrypt("afe") => "abc"

# decrypt(encrypt("swordfish"))
# Calling nested methods work as expected.
# First it encrypts "swordfish" and then returns the string "txpsegjti".
# Next it passes that string into the decrypt method.
# The decrypt method accepts the string and returns "swordfish".

# DRIVER CODE
# Ask user to encrypt or decrypt
puts "Would you like to 'encrypt' or 'decrypt' message? (e/d)"
answer = gets.chomp.downcase

# Ask user for message
puts "Please enter message:"
message = gets.chomp.downcase

# Set variable to call method of user's choice
if answer == "e"
	final_message = encrypt(message)
else answer == "d"
	final_message = decrypt(message)
end

# Display encrypted/decrypted message
puts final_message

# EXTRA (more elegant Encrypter)
# puts "Single word to encrypt:"
# string = gets.chomp.downcase
# def encrypter(string)
# 	alphabet = ('a'..'z').to_a 
# 	key = Hash[alphabet.zip(alphabet.rotate)]
# 	string.each_char.inject("") {|i, char| i + key[char]}
# end
# puts encrypter(string)
#
# EXTRA (more elegant Decrypter)
# puts "Single word to decrypt:"
# string = gets.chomp.downcase
# def decrypter(string)
# 	alphabet = ('a'..'z').to_a 
# 	key = Hash[alphabet.zip(alphabet.rotate(-1))]
# 	string.each_char.inject("") {|i, char| i + key[char]}
# end
# puts decrypter(string)