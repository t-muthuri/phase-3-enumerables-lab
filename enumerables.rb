require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)

  # your code here
  # spicy_foods.map {|food| food[:name]} <--method 1 || method 2 -->

  spicy_foods.map do |food|
    "#{food[:name]}"
    # binding.pry
  end 
end


# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)

  # PSEUDOCODE
  # heat = spicy_foods.map {|heat| heat[:heat_level]} => 9,3,6
  # spiciest = heat.find_all{|n| n > 5} => 9,6
  # spicy_foods.map {|heat| heat[:heat_level]}.find_all{|n| n > 5} => 9,6

  spicy_foods.filter {|n| n[:heat_level] > 5}
    # binding.pry
end


# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)

  # PSEUDOCODE
  spicy_foods.each  do |food|
  puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{"🌶"*food[:heat_level]}"
  # spicy_foods.values_at
  #empty array
  # binding.pry
  # your code here
  end
end

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  # your code here
  spicy_foods.find do |food|
    food[:cuisine] == cuisine
  end
end

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  # your code here
  spicy_foods.sort do |food1, food2|
    food1[:heat_level] <=> food2[:heat_level]
  end
end

# given an array of spicy foods, output to the terminal ONLY (puts)
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  # your code here
  new_array = spicy_foods.filter {|n| n[:heat_level] > 5}
  # binding.pry
  new_array.each do |food|
  puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{"🌶"*food[:heat_level]}"
    end
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
initial = 0
  spicy_foods.each {|food| initial += food[:heat_level]}
initial/spicy_foods.length
  # your code here
end
