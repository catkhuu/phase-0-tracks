## Define class

class Santa
  attr_accessor :age, :ethnicity, :gender, :reindeer_ranking
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0

    p "initializing Santa instance..."
  end

# Write class methods

  def speak
    p "Ho! Ho! Ho! Happy Holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    p "That was a good #{cookie_type} cookie! As a #{@ethnicity} santa, this #{cookie_type} cookie sure reminds me of home."
  end

  def never_gets_old(cookie_type, age)
    puts "No matter the amount of odd #{cookie_type} cookies I ingest, this never gets old at #{age} years."
    @age = age
  end

  def celebrate_birthday
    @age = @age + 1
  end

  #def get_mad_at
  # @reindeer_ranking =

# getter methods - get values and make available outside class

# def gender
#   @gender
# end

# def ethnicity
#   @ethnicity
# end

# def reindeer_ranking
#   @reindeer_ranking
# end

# def age
#   @age
# end

# setter methods - can set value outside of class

# def gender=(new_gender)
#   @gender = new_gender
# end

# def age=(new_age)
#   @age = new_age
# end

# def reindeer_ranking=(new_reindeer_ranking)
#   @reindeer_ranking = new_reindeer_ranking
# end
end

age_range=*(1..140)
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

index = 0
until index == 10
santas = Santa.new("female",  "Tibetan")
santas.gender = example_genders.sample
santas.ethnicity = example_ethnicities.sample
santas.age = age_range.sample
index +=1
puts "Santa is #{santas.age} years old"
puts "Santa is of #{santas.ethnicity} descent."
puts "Santa respectfully identifies as being a #{santas.gender}."
end

## commented out - p santas to see if santa instances were pushed into empty santas array
#p santas

# Call Methods and Class

santa = Santa.new("female", "Hawaiian")
santa.speak
santa.gender = "Female... gender fluid, who is keeping count? "
puts "No one ever said Santa can't be a #{santa.gender}. Breaking social and gender norms is my Christmas cheer!"
santa.eat_milk_and_cookies("pineapple-spam")
santa.never_gets_old("pineapple-spam", 188)
puts "Before I take off for Hawaii, I need this cookie receipe for my #{santa.ethnicity} brothers and sisters back home. They will looooove this!"

# made @age to setter. Set new_age to 200. Called santa.celebrate birthday to add 1 year to santa's new_age.
santa.age =  200
puts " On Christmas, Santa always gets one year older. Happy  birthday, Saint Nick! You truly are #{santa.celebrate_birthday} years younger!"