# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou',
# and all of the consonants (everything else besides the vowels) to the next 
# consonant in the alphabet. 
# So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

# Swap first and last name
def name_swap(name)
  name.split(' ').reverse.join(' ')
end