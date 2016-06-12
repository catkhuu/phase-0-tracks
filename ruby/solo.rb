# Define class

class Politician
  attr_accessor :name, :age, :party_affiliation, :opponent, :politician_array
  attr_reader :citizenship
  def initialize(name, age, party_affiliation, opponent)
    @name = name
    @age = age
    @party_affiliation = party_affiliation
    @citizenship = "United States"
    @opponent = opponent
    @@politician_array = []
  end

# Define methods

  def speech_making(words)
    p "As a citizen of #{@citizenship}, the greatest country in the world, I want #{words}. Together, we can make this country great again! Vote for me and not #{@opponent}"
  end

  def lobbying(promise, promise_in_exchange_for)
    p "I am going to #{promise}. In return, I want #{promise_in_exchange_for}. You can believe I will make this happen, because no one ever said #{@name} is a liar, not like #{@opponent}."
  end

  def fundraising(n)
    p "*over gestiuculates* A vote for #{@name} is a vote to secure the #{@party_affiliation}'s spot in the White House. Polling says I am beating #{@opponent} by #{n} points. At #{@age} years, you better believe I have the experience and stamina to run this country. Make a donation today, and secure this country's future!"
  end

  def master_array
    @@politician_array << @name
    @@politician_array << @age
    @@politician_array << @party_affiliation
    @@politician_array << @opponent
  end

  def print_master_array
    p @@politician_array
  end

end

# Call Class and Class methods

politician = Politician.new("The Donald", 60, "Grand Old Party", "Hilz")
done = false
until done == true
  puts "Politician's name?"
  politician.name = gets.chomp
# politician_array << politician.name
  puts "Politician's age?"
  politician.age = gets.chomp.to_i
# politician_array << politician.age
  puts "Politician's party affiliation?"
  politician.party_affiliation = gets.chomp
# politician_array << politician.party_affiliation
  puts "Politician's opponent?"
  politician.opponent = gets.chomp
# politician_array << politician.opponent
  puts "What do you want to do as President? (I want to ...*fill in blank*)"
  words = gets.chomp
# politician_array << politician.speech_making(words)
  puts "What are you promising to do? (I am going to ...*fill in blank*.)"
  promise = gets.chomp
  puts "What do you want in-exchange? (In exchange, I want...*fill in blank*)"
  promise_in_exchange_for = gets.chomp
# politician_array << politician.lobbying(promise, promise_in_exchange_for)
  puts "You are leading your opponent in the polls by? (Enter integer)"
  n = gets.chomp.to_i

  politician.master_array

# p politician_array
valid_input = false
until valid_input == true
puts "Are you done creating politicians? (no or 'done' to exit)"
input1 = gets.chomp
  if input1 == "no"
    done = false
    valid_input = true
  elsif input1 == "done"
      done = true
      valid_input = true
      politician.print_master_array
  else
    puts "I didn't get that. Please repeat."
    valid_input = false
  end
end
end


