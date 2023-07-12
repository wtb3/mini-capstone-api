#json.extract! product, :id, :created_at, :updated_at
#json.url product_url(product, format: :json)
json.id product.id
json.title product.title
json.price product.price
json.is_discounted product.is_discounted?
json.tax product.tax
json.total product.total
json.image_url product.image_url
json.ingredients product.ingredients
json.ingredients_list product.ingredients_list
json.directions product.directions
json.directions_list product.directions_list
json.friendly_created_at product.friendly_created_at
json.created_at product.created_at
json.updated_at product.updated_at
