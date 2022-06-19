class Admin::OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
    @item = Item.find(@order.item_id)
  end

  def update
  end

  private

  def order_params
  params.permit(:payment_method, :postal_code, :address, :name, :sender_postal_code, :sender_address, :sender, :payment)
  end

end
