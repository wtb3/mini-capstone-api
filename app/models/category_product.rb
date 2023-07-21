class CategoryProduct < ApplicationRecord
  belongs_to :category
  belongs_to :product
  has_many :category_products
  has_many :products, through: :category_products
end
