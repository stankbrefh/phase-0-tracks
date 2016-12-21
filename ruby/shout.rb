module Shout
	def self.yell_angrily(words)
		words + '!!!' + ':('
	end

	def self.yell_happily(words)
		words  + 'XD'
	end
end

# Driver Code
Shout.yell_angrily('STAHHHHP') # => 'STAHHHHP!!!:('
Shout.yell_happily('LOLLL!!1') # => 'LOLLL!!1XD'