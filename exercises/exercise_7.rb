require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

print "Please provide a store name "
input = $stdin.gets.chomp
print "Do you carry mens apparel? true or false "
men = $stdin.gets.chomp
print "Do you carry womens apparel? true or false "
women = $stdin.gets.chomp

new_store = Store.create(name: input, mens_apparel: men, womens_apparel: women)
puts new_store.valid?

new_store.errors.full_messages.each do |error|
  puts error
end
# puts Store.create(name: input)
