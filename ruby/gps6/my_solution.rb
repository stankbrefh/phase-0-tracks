# Virus Predictor

# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# EXPLANATION OF require_relative
# `require_relative` searches the current directory for the file and runs it
# 
require_relative 'state_data'

class VirusPredictor
  # intitializes VirusPredictor with state, population density, and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # returns predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths 
    speed_of_spread 
  end

  private

  # conditionals on population density to determine amount of deaths
  def predicted_deaths
    case @population_density 
    when 200...50_000 then multiplier = 0.4
    when 150...200 then multiplier = 0.3
    when 100...150 then multiplier = 0.2
    when 50...100 then multiplier = 0.1
    else
      multiplier = 0.05
    end
    
    number_of_deaths = (@population * multiplier).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

   # conditionals on population density to determine speed of infection
   def speed_of_spread
    case @population_density 
    when 200...50_000 then speed = 0.5
    when 150...200 then speed = 1
    when 100...150 then speed = 1.5
    when 50...100 then speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE

STATE_DATA.each {|state, state_info| VirusPredictor.new(state, state_info[:population_density], state_info[:population]).virus_effects}

#=======================================================================
# Reflection Section