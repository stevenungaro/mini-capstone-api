require "HTTP"
require "tty-table"

puts "Hello, would you like to see all products, create a product, or update a product?:"
puts "[1] All"
puts "[2] Create"
puts "[3] Update"

print "Please choose 1, 2, or 3: "
answer = gets.chomp.to_i

if answer == 1
  response = HTTP.get("http://localhost:3000/products.json")
  table = TTY::Table.new(header: ["Name", "Price", "Image URL", "Description"], rows: response.parse)
  puts table.render(:unicode)
  #pp response.parse
elsif answer == 2
  print "Enter product name: "
  name_entry = gets.chomp
  print "Enter price: "
  price_entry = gets.chomp.to_i
  print "Enter image url: "
  image_url_entry = gets.chomp
  print "Enter description: "
  description_entry = gets.chomp

  HTTP.post("http://localhost:3000/products.json", :form => { name: name_entry, price: price_entry, image_url: image_url_entry, description: description_entry })
  #table = TTY::Table.new(response)
  #puts table.render(:unicode)
  #pp response.parse
  # elsif answer == 3
  #   print "What is the id of the product you want to update?: "
  #   id_answer = gets.chomp.to_i

else
  puts "You didn't enter a valid option."
end
