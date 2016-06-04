## Release 0:
# Write method

def corgi_belly_rub
  puts "Who wants a belly rub?"
  2.times {yield}
  puts "I want more belly rubs!"
end

# Call method

corgi_belly_rub {puts "Bark! Bark! Me!"}


