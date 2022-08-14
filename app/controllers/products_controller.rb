class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def update
    product = Product.find params[:id]
    product.update!(product_params)
    # redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :amount)
  end
end