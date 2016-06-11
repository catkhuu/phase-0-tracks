# Define and declare module

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words.upcase + "!!!" + ":D :D :D :D :D"
  end
end

# Call module methods

Shout.yell_angrily("Not the ice cream")
Shout.yelling_happily("we won")