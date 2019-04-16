require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create(name: "Surrey", annual_revenue: 224_000, womens_apparel: true, mens_apparel: false)

Store.create(name: "Whistler", annual_revenue: 1_900_000, womens_apparel: false, mens_apparel: true)

Store.create(name: "Yaletown", annual_revenue: 430_000, womens_apparel: true, mens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.find_each do |store|
  puts "#{store.name}: #{store.annual_revenue}"
end

@womens_stores = Store.where(["womens_apparel= ? AND annual_revenue < ?", true, 1_000_000])

@womens_stores.find_each do |store|
  puts "#{store.name}: #{store.annual_revenue}"
end