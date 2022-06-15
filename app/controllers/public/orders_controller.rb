class Public::OrdersController < ApplicationController
  def new
    @order = Order.new
    @item = Item.find(params[:item_id])
  end

  def confirm
    @item =  Item.find(params[:item_id])
    @order = Order.new(order_params)
    
    # @order.postage = 800
    # if params[:order][:select_address] == "1"
    #   @order.postal_code = customer.postal_code
    #   @order.address = current_customer.address
    #   @order.name = current_customer.last_name + current_customer.first_name
    # elsif params[:order][:select_address] == "2"
    #   @order.sender_postal_code = params[:order][:sender_postal_code]
    #   @order.sender_address = params[:order][:sender_address]
    #   @order.sender = params[:order][:sender]
    # end
  end

  def thanks
  end

  def create
    order = Order.new(order_params)
    order.customer_id = current_customer.id
    order.item_id = Item.find(params[:item_id]).id
    byebug
    order.save!
    
    redirect_to thanks_public_customers_item_orders_path
  end

  def show
  end


private

  def order_params
  params.permit(:payment_method, :postal_code, :address, :name, :sender_postal_code, :sender_address, :sender, :payment)
  end

end
