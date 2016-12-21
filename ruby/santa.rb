# Define class Santa
class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age
  
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    p 'Initializing Santa instance ...'
  end
  
  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end
  
  def eat_milk_and_cookies(cookie_type)
    p "That was a good #{cookie_type} for #{@ethnicity} Santa!"
  end
  
  def celebrate_birthday
    @age += 1
  end
  
  def get_mad_at(reindeer)
    reindeer_ranking.delete(reindeer)
    reindeer_ranking << reindeer
  end
end

# Driver code
santas = []
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "robot"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "dragon", "unicorn"]

num = 100000
num.times do
  santa = Santa.new(gender.sample, ethnicity.sample)
  santa.age = rand(0...140)
  puts "#Santa is #{santa.age} years old. Santa identifies as a #{santa.ethnicity} #{santa.gender}."
end