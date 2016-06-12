## Grocery List Organizer

# Method to create a list
# INPUT: string of items separated by spaces (example: "carrots apples cereal pizza")
# INPUT: string of quantities corresponding to each item entered. Integers can be separated by comma without extra space in between (Example: "1,2,3")
# STEPS:
  # CREATE empty arrays. One for grocery_items and the other for grocery_quantity.
  # Also CREATE empty hash called grocery_list.
  # CONVERT ITEMS into array and store in grocery_items.
  # CONVERT QUANTITY into array and store in grocery_quantity. Convert string in array to integer using .map
  # COMBINE arrays and put into grocery_list hash
  # PRINT grocery_list hash
  # OUTPUT: hash with items (key) and quantity (value)

def grocery_list_org(items, quantity)
  grocery_list = {}
  grocery_items = []
  grocery_quantity = []

  grocery_items_arr = items.split(" ")
  grocery_quantity_arr = quantity.split(",").map {|q| q.to_i}
  grocery_list = grocery_items_arr.zip(grocery_quantity_arr)
  grocery_list_hash = Hash[grocery_list]
end

p grocery_list_org("carrots apples cereal pizza", "2,3,1,2")
grocery_list_hash = grocery_list_org("carrots apples cereal pizza", "2,3,1,2")

# Method to add an item to a list
# INPUT: item name as a string and optional quantity. If there is a quantity, input as an integer. If no quantity, set quantity to nil.
# STEPS:
  # Input item as a string
  # Input optional value (as integer, if there is a quantity, that is)
  # IMPORTANT: in order to take the keys and values stored in the grocery_list_hash from the grocery_list_org method, I have to set grocery_list_hash to the method grocery_list_org. Since there is no interface, I will test out if  the add_item method works by setting grocery_list_hash to the same values I input into the grocery_list_org. (See line 41)
  # CREATE new hash with inputted item(key) and quantity(value) values and store in variable h.
  # MERGE information that was stored in grocery_list_hash with new h hash. Store result in new variable, add_item_grocery_list_hash.
# OUTPUT: hash with added item and quantity in new hash, add_item_to_grocery_list_hash.

def add_item(item, quantity)
    grocery_list_hash = grocery_list_org("carrots apples cereal pizza", "2,3,1,2")
    h = {item => quantity}
    add_item_to_grocery_list_hash = grocery_list_hash.merge(h)
end

p add_item("cake", 5)
add_item_to_grocery_list_hash = add_item("cake", 5)

# Method to remove an item from the list
# input: Item as a string
# steps:
     # Take result from add_item method and write as add_item_to_grocery_list_hash = add_item("cake", 5)
     # Delete inputted item from add_item_to_grocery_list_hash
     # Print add_item_to_grocery_list_hash to show that inputted item has been deleted.
     # Store result in variable item_removed_hash
# output: One less item in add_item_to_grocery_list_hash that is stored in new variable called item_removed_hash

def remove_item(item)
  add_item_to_grocery_list_hash = add_item("cake", 5)
  add_item_to_grocery_list_hash.delete(item)
# p add_item_to_grocery_list_hash
  item_removed_hash = add_item_to_grocery_list_hash
# p item_removed_hash
end

p remove_item("cereal")
item_removed_hash = remove_item("cereal")

# Method to update the quantity of an item
# input: Item as a string.
# input: Quantity for that item that needs to be updated. Quantity as   an integer.
# steps:
    # Take result from remove_item method and set equal to item_removed_hash.
    # Treat updating a value in a hash similar to adding an item in a hash. h = h[k] = v. In this case, item_removed_hash[item] = new_quantity
    # Store result of updated quantity in new variable called update_quantity_hash.
# output: Hash with updated quantity for inputted item. Result stored in update_quantity_hash.

def update_item_quantity(item, new_quantity)
  item_removed_hash = remove_item("cereal")
  item_removed_hash[item] = new_quantity
  update_quantity_hash = item_removed_hash
end

p update_item_quantity("pizza", 8)
update_quantity_hash = update_item_quantity("pizza", 8)

# Method to print a list and make it look pretty
# input: update_quantity_hash and result from update_item_quantity method.
# steps:
    # Take update_quantity_hash and store in variable final_list_hash.
    # print final_list_hash
# output: printed final_list_hash

def print_list
  update_quantity_hash = update_item_quantity("pizza", 8)
  final_list_hash = update_quantity_hash
  final_list_hash
end

p print_list

# Reflect

# What did you learn about pseudocode from working on this challenge?
# We learned that writing pseudocode before you write your actual code gives you a blueprint of what you should be doing. Pseudocode forces you into a structured thought process, as opposed to just failing your way to glory (which, sometimes it works, but you really should know why what worked worked.).
# What are the tradeoffs of using arrays and hashes for this challenge? Aaron - arrays are easier to work with because they are easier to initiate and input values, but hashes organize the data more clearly. Catherine - I agree. Though, I prefer to use hashes more often than arrays. I like how more detailed a hash is as opposed to printing a list.
# What does a method return? A method returns the line of code that was evaluated last. During our GPS 2.2 session, Aji made it clear to us that there is a HUGE difference between return value and just printing from your method (i.e. printing is just a side-effect and not a return value).
# What kind of things can you pass into methods as arguments? Methods can accepts as arguments strings, integers, and booleans. We found during this challenge that we can capture this information as outputs of other methods and pass that output into other methods as arguments.
# How can you pass information between methods? Refer above.
# What concepts were solidified in this challenge, and what concepts are still confusing? In terms of what concepts were solidified during this challenge, this really helped us to understand how the output for one method can be used in other methods. What's still confusing? It would appear that we are supposed to be able to pass a method as an argument for another method, but we were't able to figure this out. Maybe you can shed some light on this for us.

