puts "How many employees are applying?"
applicants = gets.to_i

i = 0
sum = 0

until sum == applicants do
  i = i + 1
  sum = sum + 1

puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.to_i
puts "What year were you born?"
birth_year = gets.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread_lover = gets.chomp
puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp
puts "Please name any allergies you have, one at a time. Type 'done' when finished."
allergy = gets.chomp

until allergy == "sunshine" || allergy == "done" do
  puts "List any other allergies"
  allergy = gets.chomp
end


case
  when (name == "Drake Cula" || name == "Tu Fang")
    puts "Definitely a vampire"
  when allergy == "sunshine"
    puts "Probably a vampire"
  when age <120 && (garlic_bread_lover == "Yes" || insurance == "Yes")
    puts "Probably not a vampire"
  when age >120 && garlic_bread_lover == "No" && insurance == "No"
    puts "Almost certainly a vampire"
  when age >120 && (garlic_bread_lover == "No" || insurance == "No")
    puts "Probably a vampire"
  else
    puts "Results inconclusive"
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end











