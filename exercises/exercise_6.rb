require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Now, create store records

@store1 = Store.create(
  name: 'Burnaby',
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true
)

@store2 = Store.create(
  name: 'Richmond',
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true
)

@store3 = Store.create(
  name: 'Surrey',
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false
)

@store1.employees.create(
  first_name: "Khurram",
  last_name: "Virani",
  hourly_rate: 60
)

@store1.employees.create(
  first_name: "John",
  last_name: "Doe",
  hourly_rate: 55
)

@store2.employees.create(
  first_name: "Jane",
  last_name: "Smith",
  hourly_rate: 50
)

@store2.employees.create(
  first_name: "Mike",
  last_name: "Mason",
  hourly_rate: 45
)

@store3.employees.create(
  first_name: "Nathan",
  last_name: "Simons",
  hourly_rate: 60
)

@store3.employees.create(
  first_name: "Mary",
  last_name: "Gabe",
  hourly_rate: 45
)
