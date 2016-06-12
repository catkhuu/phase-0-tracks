class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(times)
    index = 0
    until index == times
      puts "Woof!"
      index += 1
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    dog_years = 10.5 + (human_years-2) *4
    puts dog_years
  end

  def fav_treat(dog, snack)
    puts "#{dog} loves to eat #{snack}!"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end
end

#Puppy.new.fetch("ball")
#Puppy.new.speak(5)
#Puppy.new.roll_over
#Puppy.new.dog_years(5)
#Puppy.new.fav_treat("Chookah", "peanut butter pretzles")
#Puppy.new.initialize

class Run

  def initialize(distance)
    @@runner = "Aaron"
    @distance = distance
  end

  def sprint
    puts "#{@@runner} can sprint #{@distance} meters in his sleep!"
  end

  def jog
    puts "It's one of those easy #{@distance} mile jog kind of days..."
  end

end

#distance = [5, 6, 7, 8, 9, 10]
#runs = []

distances = [5]
runs = []
index = 0
while index < 49
  new_distance = distances[-1]+=1 # last item in distances. In this instance, that would be 5 plus 1 = 6.
    if new_distance > 20
      new_distance = 3
    else
      new_distance
    end
  distances << new_distance
  index+=1
end

  distances.each do |distance|
    puts "Going for a #{distance} mile jog..."
    runs << Run.new(distance)
    puts "Runner has gone for #{runs.length} runs..."
  end

runs.each do |run|
  run.jog
end

#p runs

#    distance += 1
#    distance << Run.new.jog(distance).to_i
#  end
#end

# Initiate a loop. Set distance equal to 5. Repeat loop until distance equals 10.
# Iniate an empty array. Store distances in array.
# Iterate over array. For each instance (i.e distance), call .jog and .sprint

#distance = 5
#runs = []
#until distance == 11
#  Run.new(distance)
#  distance +=1
#  runs.push(distance)
#end

#runs.each do |runs|
#  Run.new.jog(runs)
#  puts "Runner has gone for #{runs.length} runs!"
#end

#Run.new.sprint
#Run.new.jog(5)



