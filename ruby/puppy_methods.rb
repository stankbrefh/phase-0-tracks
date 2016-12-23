# RELEASES 0 AND 1
class Puppy
  def initialize
    puts 'Initializing new puppy instance...'
  end
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(num)
    num.times {puts 'Woof!'}
  end
  def roll_over
    puts '*rolls over*'
  end
  def dog_years(human_years)
    dog_age = human_years.to_i * 7
    puts "I am doggers. I am #{dog_age} dogger years old."
  end
  def play_dead
    puts 'I am dead doggers.'
  end
end

# DRIVER CODE
puppers = Puppy.new
puppers.fetch('stick')
puppers.roll_over
puppers. speak(3)
puppers.dog_years(4)
puppers.play_dead

# RELEASE 2
class Skater
  def initialize
    puts 'A legend was born...'
  end
  def new_trick(trick)
    puts "Sweet, bruh! You learned how to #{trick}!"
  end
  def broken(bone)
    puts "Aw snap! You snapped your #{bone} bone..."
  end
end

# DRIVER CODE
tricks = ['kick-flip', 'ollie', 'frontside-flip', '360-flip', 'hard-flip', 'heel-flip']
bones = ['face', 'butt', 'groin', 'arm', 'leg']

skaters = []
50.times do
  skaters << Skater.new
end

skaters.each do |skater|
  skater.new_trick(tricks.sample)
  skater.broken(bones.sample)
  puts '=' * 50
end

puts 'Try again.'