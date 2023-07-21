# app/controllers/carted_products_controller.rb
# app/controllers/carted_products_controller.rb
class CartedProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    user = current_user
    carted_products = user.carted_products.where(status: "carted")
    render json: carted_products
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.update(status: "removed")
    render json: { message: "Carted product successfully removed!" }
  end

  def show
    carted_product = CartedProduct.find_by(id: params[:id])
    render json: carted_product
  end

  def create
    user = current_user
    product = Product.find_by(id: params[:product_id])

    unless product
      render json: { error: "Product not found with the given product_id" }, status: :not_found
      return
    end

    @carted_product = CartedProduct.create(
      user: user,
      product: product,
      quantity: params[:quantity],
      status: "carted",
      order_id: nil,
    )

    if carted_product.persisted?
      render json: carted_product
    else
      render json: { error: "Failed to create carted product" }, status: :unprocessable_entity
    end
  end
end
