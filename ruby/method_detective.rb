# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
"iNvEsTiGaTiOn".replace("InVeStIgAtIoN")
# => “InVeStIgAtIoN”

"zom".insert(1, "o")
"zom".insert(2, "o")
"zom".replace("zoom")
# => “zoom”

"enhance".center(15)
"enhance".replace("    enhance    ")
# => "    enhance    "

"Stop! You’re under arrest!".upcase
"Stop! You’re under arrest!".replace("STOP! YOU’RE UNDER ARREST!")
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".concat(" suspects")
"the usual".insert(-1, ' suspects')
"the usual".ljust(18, ' suspects')
"the usual".replace("the usual suspects")
#=> "the usual suspects"

" suspects".prepend("the usual")
" suspects".rjust(18, "the usual")
" suspects".replace("the usual suspects")
# => "the usual suspects"

"The case of the disappearing last letter".chop
"The case of the disappearing last letter".slice(0..-2)
"The case of the disappearing last letter".replace("The case of the disappearing last lette")
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice(1..-1)
"The mystery of the missing first letter".reverse.chop.reverse
"The mystery of the missing first letter".replace("he mystery of the missing first letter")
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
"Elementary,    my   dear        Watson!".split.join(" ")
"Elementary,    my   dear        Watson!".replace("Elementary, my dear Watson!")
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the ASCII character code for the letter "z".

"How many times does the letter 'a' appear in this string?".count("a")
# => 4