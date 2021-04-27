require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# 1. Add data into employees
@store1 = Store.find_by(id: 1)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Willy", last_name: "Wonka", hourly_rate: 60)
@store1.employees.create(first_name: "Milly", last_name: "Monka", hourly_rate: 60)
@store2 = Store.find_by(id: 2)
@store2.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 100)
@store2.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 80)
