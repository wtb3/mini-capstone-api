require "http"
require "tty-table"

response = HTTP.get("http://localhost:3000/products.json")
products = JSON.parse(response.body)

rows = products.map do |product|
  [
    product["id"],
    product["name"],
    product["price"],
    product["image_url"],
    product["description"],
  ]
end

table = TTY::Table.new(["ID", "Name", "Price", "Image URL", "Description"], rows)

puts table.render(:unicode)
