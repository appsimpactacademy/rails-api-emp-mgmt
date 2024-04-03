# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

1000.times do
  Employee.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    contact_number: Faker::Number.number(digits: 10),
    address: Faker::Address.street_address,
    pincode: Faker::Address.zip_code,
    city: Faker::Address.city,
    state: Faker::Address.state,
    date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
    date_of_hiring: Faker::Date.between(from: 5.years.ago, to: Date.today)
  )
end
