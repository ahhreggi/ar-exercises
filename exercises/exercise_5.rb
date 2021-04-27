require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Exercise 5: Calculations

# 1. Output the total revenue for the entire company
puts Store.sum(:annual_revenue)

# 2. Output the average annual revenue for all stores
puts Store.average(:annual_revenue)

# 3. Output the number of stores that are generating $1M or more in annual sales
puts Store.where("annual_revenue >= 1000000").size