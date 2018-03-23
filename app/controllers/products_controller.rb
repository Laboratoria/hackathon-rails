class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  # GET /products
  # GET /products.json
  def index
    if(params.has_key?(:category_id))
      @products = Product.where({category_id: params['category_id']})
    else
      @products = Product.all
    end
    @categories = Category.all
  end

  # GET /products/1
  # GET /products/1.json
  def show; end

  protected

  def set_layout
    'landing'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end
end
