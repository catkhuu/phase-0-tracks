# Define and declare module

module Shout
  #def self.yell_angrily(words) - 'self' used if not a mixin
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  #def self.yelling_happily(words) - 'self' used if not a mixin
  def yelling_happily(words)
    words.upcase + "!!!" + ":D :D :D :D :D"
  end
end

# Create two classes

class Human
  include Shout
end

class Dolphin
  include Shout
end

# Call module methods

#Shout.yell_angrily("Not the ice cream")
#Shout.yelling_happily("we won")

human = Human.new
p human.yell_angrily("Hey kid, get off my stoop")
p human.yelling_happily("Let's unite the democratic party")
dolphin = Dolphin.new
p dolphin.yelling_happily("We are all friends of this planet")
p dolphin.yell_angrily("There's trash floating in my home")