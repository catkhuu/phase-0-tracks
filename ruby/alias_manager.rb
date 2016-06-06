alias_history = {}

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
p alias_manager(covert_spy_name)
alias_history[covert_spy_name] = alias_manager(covert_spy_name)

begin
puts "Are you satisfied with your new alias? (yes or no). Type quit to exit."
  answer = gets.chomp
  if answer == "no"
  puts "Enter another name."
  covert_spy_name = gets.chomp.to_s
  p alias_manager(covert_spy_name)
    alias_history[covert_spy_name] = alias_manager(covert_spy_name)
  elsif answer == "yes"
  puts "Type quit to exit and print your alias history"
  answer2 = gets.chomp
  else
  puts "That is not an option."
 end
end until answer2 == "quit"

p "Here's your alias history for this session: #{alias_history}"













