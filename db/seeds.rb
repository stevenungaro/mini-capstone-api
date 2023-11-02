# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Product.create(name: "Tigris and Euphrates", price: 60, description: "A board game by Reiner Knizia")

# Product.create(name: "Haggis", price: 20, description: "A card game by Sean Ross")

# Product.create(name: "Brass: Lancashire", price: 60, description: "A board game by Martin Wallace")

# Product.create(name: "Long Shot: The Dice Game", price: 25, description: "A board game by Chris Handy")

# Product.create(name: "Reef Encounter", price: 30, description: "A board game by Richard Breese")

# Product.create(name: "Troyes", price: 40, description: "A board game by Sebastian Dujardin")

# Product.create(name: "Crokinole", price: 200, description: "A board game by Canadians")

# Supplier.create(name: "Games Games Games", email: "ggg@test.com", phone_number: "1234567890")

# Supplier.create(name: "Games and More", email: "gamesnmore@test.com", phone_number: "9876543210")

x = 0
products = Product.all
while x < Product.count
  3.times do |y|
    Image.create(url: "placeholder#{y}", product_id: products[x].id)
  end
  x += 1
end
