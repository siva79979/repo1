class ProductsController < ApplicationController
  def new
  end

  def index
    @products = Product.all
  end

  def edit
  end
  private
  def product_params
    params.require(:post).permit(:title, :body, :cover_photo)
  end
end
