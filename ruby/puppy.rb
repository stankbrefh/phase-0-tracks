# SPECIES ------------------------
# Puppers

# CHARACTERISTICS ----------------
# Friendly: yes
# Name: varies
# Color: varies

# BEHAVIOR -----------------------
# Jump
# Scamper
# Woof

# Define class Puppy
class Puppy
  def initialize(breed, name)
    # Instance variables
    @breed = breed
    @name = name
  end

  def bark
    puts 'Ruff! Ruff!'
  end

  def display
    puts "I am of #{@breed} breed and my name is #{@name}"
  end
end

# Make an object
d = Puppy.new('Doge', 'Puppers')

d.bark
d.display