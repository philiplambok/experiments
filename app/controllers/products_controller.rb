class ProductsController < ApplicationController
  def index
    @products = Product.all.order(id: :asc)
  end

  def update
    @product = Product.find params[:id]
    @product.update!(product_params)
    respond_to do |format|
      format.turbo_stream
    end
  rescue ActiveRecord::RecordInvalid => e
    @error = e
    render status: :unprocessable_entity
  end

  private

  def product_params
    {
      name: params[:product][:name],
      amount: params[:product][:amount].to_s.gsub(/[,]/, '')
    }
  end
end
