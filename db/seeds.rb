# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "user@example.com", password: "password")
User.create(email: "admin@example.com", password: "password", user_type: "admin")

5.times do |n|
  Dealership.create(name: "Dealership ##{n}", address: "#{40 - n}nth Street")
end