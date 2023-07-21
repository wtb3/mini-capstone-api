class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :order, optional: true

  validates :quantity, presence: true, numericality: { greater_than: 0 }

  def subtotal
    quantity * product.price
  end
  
end
