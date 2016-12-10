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
		p string[index]
	end
		index += 1
	end
	return string
end

encrypt("z zz")

def encrypt (string)   
	index = 0   
	temp = ""   
	while index < string.length        
		temp[index] = string[index].next     
	index += 1  
	end 
	return temp 
end  
a = "zzz" 
encrypt(a)