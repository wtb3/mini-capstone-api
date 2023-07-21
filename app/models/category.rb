class Category < ApplicationRecord
  has_many :products
  validates :name, presence: true, uniqueness: true
  has_many :category_products
  has_many :products, through: :category_products

  def category_products
    CategoryProduct.where(category_id: id)
  end

  def products
    category_products.map(&:product)
  end
end
