class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def index
    @customer = Customer.all
  end

  def edit
    @customer =Customer.find(params[:id])
  end
  def create
    @customer = Customer.new(customer_params)
    @customer.save
    redirect_to customers_path
  end
  def update
    @customer =Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to customers_path
  end
  def show
    @customer = Customer.find_by_id(params[:id])
    @customer_orders = @customer.orders
  end
  private
  def customer_params
    params.require(:customer).permit(:name, :address, :mobile)
  end

end

