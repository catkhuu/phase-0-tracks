## Client Information for Interior Design
# Identify which details of a client to collect for hash
# Prompt user for information
# Convert user input to appropriate data type
# Convert any unnecessary string into a symbol
# Print hash back out to the screen when the user has answered all of the questions
# Ask the user once more if there are any changes to their previous answers.
# If there are changes, then ask the user which key they would like to update.
  # If user entered string, then convert string into symbol before printing latest version of the hash.
# If no changes, then print latest version of the hash, and exit program.

client_info = {}

puts "What is your client's name?"
name = gets.chomp
client_info[:name] = "#{name}"

puts "How old is your client?"
age = gets.to_i
client_info[:age] = "#{age}"

puts "How many children live in your client's home?"
offspring = gets.to_i
client_info[:offspring] = "#{offspring}"

puts "How would you describe your client's decor style?"
decor_style = gets.chomp
client_info[:decor_style] = "#{decor_style}"

puts "What is your budget? (do not include '$')"
budget = gets.to_f
client_info[:budget] = "#{budget}"

puts "Would you oppose the use of faux leathers and bubble wrap in your living space? (yes or no)"
wacky_decor = gets.chomp
client_info[:wacky_decor] = "#{wacky_decor}"

puts "Would you approve of the incorporation of an Austin Power's themed love dungeon in your basement? (yes or no)"
love_dungeon = gets.chomp
client_info[:love_dungeon] = "#{love_dungeon}"

puts "How partial would you be to staging your home to host this year's Corgi Con? (scale of 1 to 10. 1 = total dislike, 10 = sign me up!)"
corgi_con = gets.to_i
client_info[:corgi_con] = "#{corgi_con}"

puts "Here's what's in your hash now: #{client_info}"

answer = "yes"
while answer == "yes"
  puts "Would you like to revise any of your answers? (yes or no)"
  answer = gets.chomp

case answer
when "yes"
  puts "Which field you would like to revise? (options: name, age, offspring, decor style, budget, wacky decor, love dungeon, corgi con)"
  response = gets.chomp
  if response == "name"
    puts "What is your client's name?"
    name = gets.chomp
    client_info[:name] = "#{name}"
  elsif response == "age"
    puts "How old is your client?"
    age = gets.to_i
    client_info[:age] = "#{age}"
  elsif response == "offspring"
    puts "How many children live in your client's home?"
    offspring = gets.to_i
    client_info[:offspring] = "#{offspring}"
  elsif response == "decor style"
    puts "How would you describe your decor style?"
    decor_style = gets.chomp
    client_info[:decor_style] = "#{decor_style}"
  elsif response == "budget"
    puts "What is your budget? (do not include '$')"
    budget = gets.to_i
    client_info[:budget] = "#{budget}"
  elsif response == "wacky decor"
    puts "Would you oppose the use of faux leathers and bubble wrap in your living space? (yes or no)"
    wacky_decor = gets.chomp
    client_info[:wacky_decor] = "#{wacky_decor}"
  elsif response == "love dungeon"
    puts "Would you approve of the incorporation of an Austin Power's themed love dungeon in your basement? (yes or no)"
    love_dungeon = gets.chomp
    client_info[:love_dungeon] = "#{love_dungeon}"
  elsif response == "corgi con"
    puts "How partial would you be to staging your home to host this year's Corgi Con? (scale of 1 to 10. 1 = total dislike, 10 = sign me up!)"
    corgi_con = gets.to_i
    client_info[:corgi_con] = "#{corgi_con}"
  else
    puts "That's not an option"
  end
when "no"
  puts "Sounds good to me."
else
  puts "I didn't get that."
end
end

puts "Here's what's in your hash now: #{client_info}"


