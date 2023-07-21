class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders
  has_many :carted_products
  has_many :products, through: :carted_products
  has_many :categories, through: :products
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
