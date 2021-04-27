require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Exercise 4: Loading a subset of stores

# 1. Create 3 more stores
@store4 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
@store5 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
@store6 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# 2. Fetch a collection of only those stores that carry men's apparel
@mens_stores = Store.where("mens_apparel = true") # Store.where(mens_apparel: true)

# 3. Loop through the mens stores and output their name and annual revenue on each line
@mens_stores.each do |store|
  puts store.name, store.annual_revenue
end

# 4. Repeat for stores that carry women's apparel and are generating less than $1M in annual revenue
@womens_stores = Store.where("annual_revenue < 1000000 AND womens_apparel = true")
@womens_stores.each do |store|
  puts store.name, store.annual_revenue
end
