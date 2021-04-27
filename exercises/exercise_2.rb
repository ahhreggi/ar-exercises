require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Exercise 2: Update the first store

# 1. Load the first store
@store1 = Store.find_by(id: 1)

# 2. Load the second store
@store2 = Store.find_by(id: 2)

# 3. Update the first store instance in the database
@store1.name = "Wendy's"
@store1.save
