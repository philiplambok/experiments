# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 1.upto(10).each do |index|
#   Employee.create!(name: "Employee #{index}", email: "employee#{index}@email.com")
# end

10.times.each do
  Admin.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email
  )
end
50.times.each do
  Product.create!(name: Faker::Food.dish, amount: Faker::Number.within(range: 100_000..500_000))
end
