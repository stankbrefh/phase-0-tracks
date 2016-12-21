# Define class Santa
class Santa
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
  
  # Getter methods
  def age
    @age
  end
  
  def ethnicity
    @ethnicity
  end
  
  # Setter method
  def gender=(new_gender)
    @gender = new_gender
  end
end

# Driver code
santa1 = Santa.new
santa1.speak
santa1.eat_milk_and_cookies('snickerdoodle')
p santas[1].ethnicity
p santas[0].celebrate_birthday