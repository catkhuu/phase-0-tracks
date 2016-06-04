## Release 0:
# Write method

def corgi_belly_rub
  # you can also define name here and replace 'Mochi' next to yield with 'name'
  puts "Who wants a belly rub?"
  2.times {yield("Mochi")}
  puts "I want more belly rubs!"
end

# Call method

corgi_belly_rub {|name| puts "Bark! Bark! Me! #{name}"}


## Release 1:

grocery_list = ["apple", "bananas", "almond milk", "oatmeal", "peanut butter", "spinach"]
grocery_specifics = {"apple" => "organic", "bananas" => "organic", "almond milk" => "unsweetened", "oatmeal" => "gluten-free", "peanut butter" => "chunky", "spinach" => "prewashed"}
p "grocery_list array before .each is used"
p grocery_list
p "grocery_list array after .each is used. In this case, I chose to reverse the order of the items on the grocery list."
p grocery_list.reverse.each {|item| puts item}

p "grocery_list array before .map is used"
p grocery_list
p "grocery_list array after .map is used. I created a new variable to print, more_legible_list, to contain upcase modification."
more_legible_list = grocery_list.map do |item|
  puts item
  item.upcase
end

p grocery_list
p more_legible_list

p "grocery_list array before .map! is used"
p grocery_list
p "grocery_list array after .map! is used to just capitalize the first letter of each item on the list"
grocery_list.map! do |item|
  puts item
  item.capitalize
end

p grocery_list

p "grocery_specifics before .each is used"
p grocery_specifics
p "grocery_specifics after .each is used"

grocery_specifics.each do |item, details|
  puts "You can't get just any #{item}, you have to get the #{details} one. "
end

p "grocery_specifics before .map is used"
p grocery_specifics
p "grocery_specifics after .map is used to sort the list by item and is stored in a new variable, sorted_grocery_list"

sorted_grocery_list = grocery_specifics.sort.map {|item, details| item}
p sorted_grocery_list


## Release 3
# Hash
p "hash example using delete_if, keep_if, select, and reject"
p noahs_ark = {"piglet" => 9, "corgi" => 5, "pony" => 10, "giraffe" => 2, "zebra" => 1}
p noahs_ark.delete_if {|animal, quantity| quantity < 2
}
p noahs_ark.keep_if {|animal, quantity| quantity > 3}
p noahs_ark.select {|animal, quantity| animal.include? "zebra"}
p noahs_ark.reject {|animal, quantity| quantity < 4}

# Array
p "array example using delete_if, keep_if, include?, and reject"
p random_arr = [1, 22, 100, 33, 7, 15, 46, 120]
p random_arr.delete_if {|array| array < 25}
p random_arr.keep_if {|array| array > 50}
p random_arr.include?(100)
p random_arr.reject {|array| array < 100}
