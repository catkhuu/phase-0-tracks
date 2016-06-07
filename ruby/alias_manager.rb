## Alias Manager
# Prompt user for cover_spy_name
# Take covert_spy_name and make all downcase.
# Put covert_spy_name in array. "Felicia Torres" should result in "[felicia, torres]"
# Reverse array positions. "[torres, felicia]"
# Convert reversed_spy_name[0] into a string and store in variable first_name.
# Convert reversed_spy_name[1] into a string and store in variable last_name.
# Join first_name and last_name and store in variable first_name. full_name should be "torres felicia"
# Substitute all vowels in full_name with next vowel. [aeiou] => [eioua]. Substitute all consonants with the next consonant in the alphabet. Store result in variable full_name_id
# Capitalize the first letter in the first and last name of full_name_id by converting it back into a string and using .map to capitalize, then convert array back into strong. Final result of new spy name is stored in variable first_name_idx.

alias_history = {} # empty hash to story alias results. Input = key, while output (new spy name) = value.

def alias_manager(covert_spy_name)

  spy_name = covert_spy_name.downcase.split(' ')
  reversed_spy_name = spy_name.reverse
  first_name = reversed_spy_name.first.to_s
  last_name = reversed_spy_name.last.to_s
  full_name = first_name + " " + last_name
  full_name_id = full_name.gsub(/[abcdefghijklmnopqrstuvwxyz]/, 'a' => 'e', 'b' => 'c', 'c' => 'd', 'd' => 'f', 'e' => 'i', 'f' => 'g', 'g' => 'h', 'h' => 'j', 'i' => 'o', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'n' => 'p', 'o' => 'u', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't', 't' => 'v', 'u' => 'a', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z', 'z' => 'b')
  full_name_idx = full_name_id.split.map {|x| x.capitalize}.join(' ')
end

# Prompt user to enter their name
puts "Enter your name."
covert_spy_name = gets.chomp.to_s
p alias_manager(covert_spy_name) # prints new spy name
alias_history[covert_spy_name] = alias_manager(covert_spy_name) # store new alias in hash.

begin
puts "Are you satisfied with your new alias? (yes or no). Type quit to exit."
  answer = gets.chomp
  if answer == "no"
  puts "Enter another name."
  covert_spy_name = gets.chomp.to_s
  p alias_manager(covert_spy_name)
    alias_history[covert_spy_name] = alias_manager(covert_spy_name) # used covert_spy_name (non-symbol) as a key, otherwise, the hash history would never update and what gets printed as alias history is the most recent input and output and not an actual history. If symbol is used as key, a symbol is constant so it the same value will print out as opposed to a history.
  elsif answer == "yes"
  puts "Type quit to exit and print your alias history"
  answer2 = gets.chomp #added answer2. If left as 'answer,' loop would never accept 'quit' to exit program because I would be asking 'answer' to do two things. Store 'yes' or 'no,' and to exit loop. answer2 required.
  else
  puts "That is not an option."
 end
end until answer2 == "quit"

p "Here's your alias history for this session: #{alias_history}"
# prints final alias history for current session













