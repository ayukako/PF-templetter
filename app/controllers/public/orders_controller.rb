class Public::OrdersController < ApplicationController
  def new
    @envelope = Envelope.find(params[:item][:envelope_id])
    @paper = Paper.find(params[:item][:paper_id])
    @font = Font.find(params[:item][:font_id])
    @message = params[:item][:message]
    session[:message] = params[:item][:message]
  end

  def confirm
  end

  def thanks
  end

  def create
  end

  def show
  end



end
