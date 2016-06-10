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

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:
