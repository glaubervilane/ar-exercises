require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Ask the user for a store name
print "Enter a store name: "
store_name = gets.chomp

# Ask the user for annual revenue, mens_apparel, and womens_apparel
print "Enter annual revenue: "
annual_revenue = gets.chomp.to_i

print "Carries men's apparel (true/false): "
mens_apparel = gets.chomp.downcase == 'true'

print "Carries women's apparel (true/false): "
womens_apparel = gets.chomp.downcase == 'true'

# Create a new store with all attributes
new_store = Store.new(
  name: store_name,
  annual_revenue: annual_revenue,
  mens_apparel: mens_apparel,
  womens_apparel: womens_apparel
)

# Check if the store is valid and attempt to save it
if new_store.valid?
  new_store.save
  puts "Store '#{store_name}' was successfully created."
else
  puts "Store validation failed. Errors:"
  new_store.errors.full_messages.each { |msg| puts msg }
end
