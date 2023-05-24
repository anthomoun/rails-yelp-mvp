# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
new_pekin = {name: "new Pekin", address: "7 Boundary St, London E2 7JE", phone_number: "111", category: "chinese"}
new_rome =  {name: "new Rome", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "222", category: "italian"}
new_tokyo = {name: "new Tokyo", address: "address 3", phone_number: "333", category: "japanese"}
new_paris = { name: "new Paris", address: "address 4", phone_number: "444", category: "french"}
new_bruxelles = { name: "new Bruxelles", address: "address 5", phone_number: "555", category: "belgian"}

[new_pekin, new_rome, new_tokyo, new_paris, new_bruxelles].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"