class Public::OrdersController < ApplicationController
  def new
    @order = Order.new
    @item = Item.find(params[:item_id])
    @envelope = Envelope.find(@item.envelope_id)
    @paper = Paper.find(@item.paper_id)
    @font = Font.find(@item.font_id)
    @message = @item.article
  end

  def confirm
    @item = current_customer.item
    @order = Order.new(order_params)
    @order.postage = 800
    if params[:order][:select_address] == "1"
      @order.postal_code = customer.postal_code
      @order.address = current_customer.address
      @order.name = current_customer.last_name + current_customer.first_name
    elsif params[:order][:select_address] == "2"
      @order.sender_postal_code = params[:order][:sender_postal_code]
      @order.sender_address = params[:order][:sender_address]
      @order.sender = params[:order][:sender]
    end
  end

  def thanks
  end

  def create
  end

  def show
  end


private

  def order_params
  params.require(:order).permit(:payment_method, :postal_code, :address, :name, :sender_postal_code, :sender_address, :sender)
  end

end
