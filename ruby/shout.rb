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
  def yell_angrily(words)
    words + '!!!' + ':('
  end
  def yell_happily(words)
    words + 'XD'
  end
end

class Grumpy
  include Shout
end

class Happy < Grumpy
end

g = Grumpy.new
puts g.yell_angrily("STAHHHHP")

h = Happy.new
puts h.yell_happily("LOLOL!!1!")