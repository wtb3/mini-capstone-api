class OrdersController < ApplicationController
  def create
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
    )
    @order.save
    render :show
    if @order.save #Happy path
      render :show
    else #Sad path
      render json: { errors: @order.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
