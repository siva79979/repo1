class OrdersController < ApplicationController
  def new
    @order = Order.new
    @order.customer
    @customers = Customer.all
  end

  def index
    @orders =Order.where(:customer_id => params[:id])
  end

  def edit
  end
  def create
    @order = Order.new(order_params)
    @order.save
    redirect_to customer_orders_path(order_params[:customer_id])
  end
  private
  def order_params
  params.require(:order).permit(:customer_id, :product, :price, :date)
  end
end
