require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Exercise 1: Create 3 stores

# 1. Create the 3 stores in the database
burnaby = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
richmond = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
gastown = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

# 2. Print the number of stores in the database
puts Store.count