class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!

  def index
    @products = current_admin.company.products
    respond_with(@products)
  end

  def show
    respond_with(@product)
  end

  def new
    @product = current_admin.company.products.build
    respond_with(@product)
  end

  def edit
  end

  def create
    @product = current_admin.company.products.build(product_params)
    @product.save
    respond_with(@product)
  end

  def update
    @product.update(product_params)
    respond_with(@product)
  end

  def destroy
    @product.destroy
    respond_with(@product)
  end

  private
    def set_product
      @product = current_admin.company.products.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:code, :name, :cost, :price, :quantity, :description)
    end
end
