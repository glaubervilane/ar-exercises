require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.find(1)
@store2 = Store.find(2)
@store1.update(name: 'Super Store')
@store1.save


updated_store_name = Store.find(1).name
puts "Updated store name: #{updated_store_name}"
