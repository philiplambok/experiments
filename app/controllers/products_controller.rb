class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def update
    @product = Product.find params[:id]
    @product.update!(product_params)
    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :amount)
  end
end