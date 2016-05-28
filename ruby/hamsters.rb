puts "Hamster's name?"
name = gets.chomp
puts "Welcome, #{name}"

puts "Volume level from 1 to 10?"
volume = gets.to_i
if volume >4
  puts "a #{volume}? Aren't you a noisy one?"
else
  puts "a #{volume}? We are going to get along just fine."
end

puts "Fur color?"
fur_color = gets.chomp
puts "What a lovely #{fur_color} coat you have!"

puts "Good candidate for adoption?"
adoption = gets.chomp
if adoption == "yes"
  puts "Let's find you a forever home!"
else
  puts "Too bad, little one."
end

puts "Estimated age?"
age = nil
age ||= gets.to_i
if age <2
  puts "Only #{age}?! You will have plenty more years to come, little one."
else
  puts "#{age}? Let's find you a quiet and loving home."
end










