require "HTTP"
require "tty-table"

puts "Hello, would you like to see all products or a random product?:"
puts "[1] All"
puts "[2] Random"

print "Please enter 1 or 2: "
answer = gets.chomp.to_i

if answer == 1
  #do something
  response = HTTP.get("http://localhost:3000/all_products")
  pp response.parse
elsif answer == 2
  #do other things
  response = HTTP.get("http://localhost:3000/random_product")
  pp response.parse
else
  puts "You didn't enter a valid option."
end
