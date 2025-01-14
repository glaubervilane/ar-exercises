require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

@store1.destroy
@store2.destroy

surrey_store = Store.create(
  name: 'Surrey',
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)

whistler_store = Store.create(
  name: 'Whistler',
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)

yaletown_store = Store.create(
  name: 'Yaletown',
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

# Fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Loop through and output the name and annual revenue of each men's store
puts "Men's Apparel Stores:"
@mens_stores.each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

# Fetch stores that carry women's apparel with annual revenue less than $1 million
@womens_stores = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000)

# Loop through and output the name and annual revenue of each women's store
puts "\nWomen's Apparel Stores with Annual Revenue < $1M:"
@womens_stores.each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

