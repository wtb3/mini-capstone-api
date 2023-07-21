class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_many :carted_products
  has_many :products, through: :carted_products
  has_many :categories, through: :products
  
  # validates :quantity, presence: true, numericality: { greater_than: 0 }
  # def calculate_subtotal
  #   self.subtotal = product.price * quantity
  # end
  # def calculate_tax
  #   self.tax = subtotal * 0.09
  # end
  # def calculate_total
  #   self.total = subtotal + tax
  # end
  # def calculate_totals
  #   calculate_subtotal
  #   calculate_tax
  #   calculate_total
  # end
  # def update_totals
  #   calculate_subtotal
  #   calculate_tax
  #   calculate_total
  #   save
  # end
  # def update_totals!
  #   calculate_subtotal
  #   calculate_tax
  #   calculate_total
  #   save!
  # end
  # def friendly_created_at
  #   created_at.strftime("%m/%d/%Y")
  # end
  # def friendly_updated_at
  #   updated_at.strftime("%m/%d/%Y")
  # end
  # def friendly_subtotal
  #   "$#{subtotal}"
  # end
  # def friendly_tax
  #   "$#{tax}"
  # end
  # def friendly_total
  #   "$#{total}"
  # end
  # def friendly_quantity
  #   "#{quantity}"
  # end
  # def friendly_product_name
  #   "#{product.name}"
  # end
  # def friendly_product_price
  #   "#{product.price}"
  # end
  # def friendly_product_image_url
  #   "#{product.primary_image_url}"
  # end
  # def friendly_product_description
  #   "#{product.description}"
  # end
  # def friendly_product_inventory
  #   "#{product.inventory}"
  # end
  # def friendly_product_supplier
  #   "#{product.supplier.name}"
  # end
  # def friendly_product_supplier_email
  #   "#{product.supplier.email}"
  # end
  # def friendly_product_supplier_phone_number
  #   "#{product.supplier.phone_number}"
  # end
  # def friendly_product_supplier_created_at
  #   "#{product.supplier.created_at}"
  # end
  # def friendly_product_supplier_updated_at
  #   "#{product.supplier.updated_at}"
  # end
  # def friendly_product_supplier_id
  #   "#{product.supplier.id}"
  # end
  # def friendly_product_supplier_name
  #   "#{product.supplier.name}"
  # end
  # def friendly_product_supplier_email
  #   "#{product.supplier.email}"
  # end
  # def friendly_product_supplier_phone_number
  #   "#{product.supplier.phone_number}"
  # end
  # def friendly_product_supplier_created_at
  #   "#{product.supplier.created_at}"
  # end
  # def friendly_product_supplier_updated_at
  #   "#{product.supplier.updated_at}"
  # end
  # def friendly_product_supplier_id
  #   "#{product.supplier.id}"
  # end
  # def friendly_product_supplier_name
  #   "#{product.supplier.name}"
  #end
end
