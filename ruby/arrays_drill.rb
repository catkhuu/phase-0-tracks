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