# Part One
# Given the follow array:
animals = [:dog, :cat, :zebra, :quokka, :unicorn, :bear]

# Use an enumerable to
# 1. Return an array of animals as strings.
string_animals = animals.map do |animal|
  animal.to_s
end
# pp string_animals

# 2. Return an array of animals with a length >= 4.
long_animals = animals.select do |animal|
  animal.length >= 4
end
# pp long_animals


# Part Two


# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings
single_layer = nested_animals.flatten.map do |animal|
  animal.to_s
end
# pp single_layer

# Above is a cop out because we use flatten to get out of the ensted iteration. 
  # Above is so common that they made .flat_map method for it. This is an accepted way of doing this. 
# Below is a nested way of doing this.
single_layer = []
nested_animals.each do |animals|
  animals.each do |animal|
    single_layer << animal.to_s
  end
end

pp single_layer

# 2. Return an unnested array of animals with length >= 4
single_layer_long = nested_animals.flatten.select do |animal|
  animal.length >= 4
end
# pp single_layer_long

# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }

falttened = nested_animals.flatten
result = Hash[falttened.collect { |animal| [animal, animal.length] }]

# p result

hash = {}

nested_animals.flatten.each do |animal|
  hash[animal] = animal.to_s.length
  hash
end

p hash