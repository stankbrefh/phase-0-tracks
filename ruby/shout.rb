# module Shout
#   def self.yell_angrily(words)
#     words + '!!!' + ':('
#   end
#   def self.yell_happily(words)
#     words  + 'XD'
#   end
# end

# # Driver Code
# Shout.yell_angrily('STAHHHHP') # => 'STAHHHHP!!!:('
# Shout.yell_happily('LOLLL!!1') # => 'LOLLL!!1XD'

module Shout
  def yell(words)
  	puts "#{words.upcase}!!!"
  end
end

class Grumpy
  include Shout
end

class Happy
  include Shout
end

person_grumpy = Grumpy.new
person_grumpy.yell("I am upset")

person_happy = Happy.new
person_happy.yell("I am happy")