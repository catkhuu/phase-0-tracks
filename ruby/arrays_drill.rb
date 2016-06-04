## Release 2
# write method_1
def build_array(x,y,z)
  arr = []
  arr.push(x,y,z)
end

# call method

p build_array(1, "two", nil)


# write method_2
def add_to_array(arr, value)
  arr.push(value)
end

#call method

p add_to_array([], "a")
p add_to_array(["a", "b", "c", 1, 2], 3)
p add_to_array(["walk", "run"], "sprint")


## Release 1
pets = []
p pets
pets.push("corgi", "bealge", "english bull dog", "piglet", "greyhound")
p pets
pets.delete_at(2)
p pets
pets.insert(2, "golden retriever")
p pets
pets.delete("corgi")
p pets
p "pet array includes 'corgi'?"
p pets.include?('corgi')
pet_names = ["Bob", "Milton", "Mochi", "Po"]
p pet_names
available_pets = pets + pet_names
p available_pets