# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning the DB..."

Car.destroy_all
Owner.destroy_all

puts "Creating owners..."
ife = Owner.create!(nickname: "ife5000")
deji = Owner.create!(nickname: "DejiGasGas")
claire = Owner.create!(nickname: "WonderClair")
ben = Owner.create!(nickname: "BenMcClaren")

puts "Creating cars..."

Car.create!(brand: "Farrari", model: "Testarossa", year: 1995, fuel: "Unleaded Petrol", owner: ife)
Car.create!(brand: "Mercedes", model: "300SL Roadster", year: 1987, fuel: "Diesel", owner: deji)
Car.create!(brand: "Aston Martin", model: "DB5", year: 1965, fuel: "Unlead Petrol", owner: claire)
Car.create!(brand: "Mclaren", model: "720S", year: 2024, fuel: "Unlead Petrol", owner: ben)

puts "Done! #{Owner.count} owners and #{Car.count} cars created."
