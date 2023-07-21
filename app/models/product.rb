class Product < ApplicationRecord
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :image_url, presence: true
  validates :name, presence: true
  belongs_to :supplier
  has_many :orders
  has_many :category_products
  has_many :products, through: :category_products
  has_many :carted_products
  has_many :users, through: :carted_products
  has_many :images

  # has_many :images

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  # def primary_image_url
  #   if images.length > 0
  #     images[0].url
  #   else
  #     "https://www.freeiconspng.com/uploads/no-image-icon-4.png"
  #   end

  def images
    Image.where(product_id: id)
  end

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
