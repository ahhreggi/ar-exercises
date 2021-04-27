require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Exercise 7: Validations for both models

# 0. Add validations to the Employee and Store models

# 1. Ask the user for a store name
print "Please enter a new store name: "
store_name = gets.chomp

# 2. Attempt to create a store with the inputted name but leave out the other fields
# (annual_revenue, mens_apparel, and womens_apparel)

# @new_store = Store.create(name: store_name)
# => Error: annual_revenue: ["can't be blank", "is not a number"]

# @new_store = Store.create(name: store_name, annual_revenue: -1)
# => Error: annual_revenue: ["must be greater than or equal to 0"]

@new_store = Store.create(name: store_name, annual_revenue: 100000, mens_apparel: false, womens_apparel: false)
# => Error: mens_apparel: ["Must carry at least one of either mens or womens apparel"]
#    Error: womens_apparel: ["Must carry at least one of either mens or womens apparel"]

# 3. Display the error messages provided back from ActiveRecord to the user (one on each line)
# after you attempt to save/create the record
@new_store.errors.messages.each do |column, error|
  puts "Error: #{column}: #{error}"
end