class Public::OrdersController < ApplicationController
  def new
    @envelope = Envelope.find(params[:item][:envelope_id])
    @paper = Paper.find(params[:item][:paper_id])
    @font = Font.find(params[:item][:font_id])
    @message = params[:item][:message]
    session[:message] = params[:item][:message]
    @item = Item.new(envelope: @envelope, paper: @paper, font: @font)
  end

  def confirm
    @envelope = Envelope.find(params[:item][:envelope_id])
    @paper = Paper.find(params[:item][:paper_id])
    @font = Font.find(params[:item][:font_id])
    @message = params[:item][:message]
    session[:message] = params[:item][:message]
    @item = Item.new(envelope: @envelope, paper: @paper, font: @font)
  end

  def thanks
  end

  def create
  end

  def show
  end



end
