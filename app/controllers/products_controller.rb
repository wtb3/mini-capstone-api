class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      render :show, status: :created
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @product = find_product_by_id
    render :show
  end

  def update
    @product = find_product_by_id

    if @product.update(product_params)
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @product = find_product_by_id
    @product.destroy
    render json: { message: "Product destroyed successfully!" }
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :image_url, :description)
  end

  def find_product_by_id
    Product.find_by(id: params[:id])
  end
end
