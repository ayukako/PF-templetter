class Public::OrdersController < ApplicationController
  def new
    @order = Order.new
    @item = Item.find(params[:item_id])
  end

  def confirm
    @item =  Item.find(params[:item_id])
    @order = Order.new(order_params)
  end

  def thanks
  end

  def create
    order = Order.new(order_params)
    order.customer_id = current_customer.id
    order.item_id = Item.find(params[:item_id]).id
    order.save!
    redirect_to thanks_public_customers_item_orders_path
  end

  def show
    @item =  Item.find(params[:item_id])
    @order = Order.new(order_params)
  end


private

  def order_params
  params.permit(:payment_method, :postal_code, :address, :name, :sender_postal_code, :sender_address, :sender, :payment)
  end

end
