class Public::ItemsController < ApplicationController
  def new
    @item = Item.new
    @envelopes = Envelope.all
    @papers = Paper.all
    @fonts = Font.all
    @articles = Article.all
  end

  def index
    @envelopes = Envelope.all
    @papers = Paper.all
    @fonts = Font.all
    @articles = Article.all
  end

  def confirm
    @envelope = Envelope.find(params[:item][:envelope_id])
    @paper = Paper.find(params[:item][:paper_id])
    @font = Font.find(params[:item][:font_id])
    @message = params[:item][:message]
    @item = Item.new(envelope: @envelope, paper: @paper, font: @font, article: @message)
    @item.customer_id = current_customer.id
    @item.article = "フォームで一緒に送ってあげてね！" # textareaのデータが取れたらこの
    @item.save
    session[:message] = params[:item][:article]
  end

  def edit
    @item = Item.find(params[:id])
    @envelopes = Envelope.all
    @papers = Paper.all
    @fonts = Font.all
    @articles = Article.all
    render 'new' # edit作ってください！
  end

  def update
  end

  def create
  end

  def destroy_all
  end

private

  def item_params
    params.require(:item).permit(:envelope_id, :paper_id,:font_id, :article_id)
  end

end
