# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# 1. Clean the database 🗑️
puts "Cleaning database..."
Flat.destroy_all

# 2. Create the instances 🏗️
puts "Creating flats..."

4.times do
  Flat.create!(
    name: Faker::Locations::Australia.state,
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentence,
    price_per_night: rand(50..500),
    number_of_guests: rand(1..6)
  )
end

# 3. Display a message 🎉
puts "Finished! Created #{Flat.count} flats."
