class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    product = Product.find_by(id: params[:order][:product_id])

    calculated_subtotal = product.price * params[:order][:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = current_user.orders.new(
      product_id: params[:order][:product_id],
      quantity: params[:order][:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )

    if @order.save
      render :show, status: :created
    else
      render json: { error: @order.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    if @order
      render :show
    else
      render json: { error: "Order not found" }, status: :not_found
    end
  end

  def index
    @orders = current_user.orders
    render "index"
  end
end
