class Public::CustomersController < ApplicationController
  def show
    @customer = current_customer
    @orders = current_customer.orders.all
  end

  def unsubscribe
  end
  
  def customer_index

    @items = current_customer.items
  end

  def withdraw
    @customer = current_customer
    @customer.update(is_active: false)
    if @customer.update(is_active: false)
      sign_out current_customer
    end
    redirect_to public_homes_top_path
  end
end
