require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Exercise 3: Delete the third store

# 1. Load the third store
@store3 = Store.find_by(id: 3)

# 2. Delete the store from the database
@store3.destroy

# 3. Verify that the store has been deleted
puts "Number of stores in the database: #{Store.count}"