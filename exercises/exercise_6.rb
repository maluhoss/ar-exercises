require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Maliha", last_name: "Hossain", hourly_rate: 100)

@store1.employees.create(first_name: "Saba", last_name: "Zub", hourly_rate: 50)

@store1.employees.create(first_name: "Amita", last_name: "Parr", hourly_rate: 50)

@store2.employees.create(first_name: "Sarah", last_name: "Farah", hourly_rate: 75)

@store2.employees.create(first_name: "Ziadh", last_name: "Rabbani", hourly_rate: 25)
