require "HTTP"
require "tty-table"

puts "Hello, would you like to see all products, create a product, update a product, or delete a product?:"
puts "[1] All"
puts "[2] Create"
puts "[3] Update"
puts "[4] Delete"

print "Please choose 1, 2, 3, or 4: "
answer = gets.chomp.to_i

if answer == 1
  response = HTTP.get("http://localhost:3000/products.json")
  table = TTY::Table.new(header: ["ID", "Name", "Price", "Image URL", "Description"], rows: response.parse)
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
elsif answer == 3
  print "What is the id of the product you want to update?: "
  id_answer = gets.chomp.to_i
  response = HTTP.get("http://localhost:3000/products/#{id_answer}.json")
  pp response.parse

  while true
    puts "[N] Name"
    puts "[P] Price"
    puts "[I] Image_url"
    puts "[D] Description"

    print "Please select field you would like to update or type 'exit' if you have no further changes: "
    answer2 = gets.chomp.upcase
    if answer2 == "N"
      print "Enter the new name: "
      new_name = gets.chomp
      HTTP.patch("http://localhost:3000/products/#{id_answer}.json", :form => { name: new_name })
    elsif answer2 == "P"
      print "Enter the new price: "
      new_price = gets.chomp.to_i
      HTTP.patch("http://localhost:3000/products/#{id_answer}.json", :form => { price: new_price })
    elsif answer2 == "I"
      print "Enter the new image url: "
      new_image_url = gets.chomp
      HTTP.patch("http://localhost:3000/products/#{id_answer}.json", :form => { image_url: new_image_url })
    elsif answer2 == "D"
      print "Enter the new descrption: "
      new_description = gets.chomp
      HTTP.patch("http://localhost:3000/products/#{id_answer}.json", :form => { description: new_description })
    elsif answer2 == "EXIT"
      break
    else
      puts "Invalid option. Please type N, P, I, D or exit."
    end
  end
elsif answer == 4
  print "Enter the id of the product you would like to delete: "
  delete_answer = gets.chomp.to_i
  HTTP.delete("http://localhost:3000/products/#{delete_answer}.json")
else
  puts "You didn't enter a valid option."
end
