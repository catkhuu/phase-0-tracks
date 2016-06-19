# Virus Predictor

# I worked on this challenge [by myself, with: Aaron Larkin].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#
# Require_relative allows this file to interact with state_data.rb. Links file to another file in the project - in this case 'state_data'. Require_relative uses the current directory, whereas require uses the directory where the program is located. Require can be used to access files in different repositories. Require_relative can only be used to access files in the same repository/project.

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # encasing the two methods below it that will return number of deaths and speed of spread.

 # will return results of both methods: predicted_deaths and speed_of_spread by calling on just one method - virus_effects
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private # keep outside entities from accessing information after 'private'

  # will return number of deaths for each state. The greater the population density then the higher the predicted deaths.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # will return speed that the virus will spread for each state. The lower the population density then the greater the speed of spread.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state,population|
  state_call = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state_call.virus_effects
end

#=======================================================================
# Reflection Section

    # What are the differences between the two different hash syntaxes shown in the state_data file? STATE_DATA is a hash where state ('Alabama') is its key, while everything following 'Alabama' would be its value. The hash within STATE_DATA is the state ('Alabama') and its hash keys are population_density and population. Both keys are symbols. The state's value is whatever follows after population_density and population.
    # What does require_relative do? How is it different from require? 'require' uses the current directory that you are running the program from, whereas, 'require_relative' uses the directory of where that program itself resides. 'require_relative' it can be used to access the information from any of your files (I like to think of require_relative as files of my own), while 'require' is used to access files from another repo or another directory that you might not have control over.
    # What are some ways to iterate through a hash? You can iterate through a hash with hash#each. When iterating through a hash, it's different than iterating through an array because hashes are made up of keys and values. So, when you iterate through a hash, you are also going to iterate through its key-value pairs (e.g. hash.each do |k,v| block of code to execute ... end)
    # When refactoring virus_effects, what stood out to you about the variables, if anything? They were instance variables that were already defined in the initialize method. So, there really wasn't a reason why the state, population, and population_density variables needed to be passed as arguments when they are instance variables and are defined when each new instance of the VirusPredictor class is created.
    # What concept did you most solidify in this challenge? Hands-down, iterating through a hashed hash and instance variables vs. class variables. After this GPS, I definitely feel I have a better understanding of nested data structures and how to iterate through them. I had trouble grasping iterations from a previous Ruby challenge, so this GPS certainly answered some questions I had on this concept.


#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census