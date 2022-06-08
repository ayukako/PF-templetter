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
    @envelope = Envelope.find(params[:envelope_id])
    @paper = Paper.find(params[:paper_id])
    @font = Font.find(params[:font_id])
    @message = params[:message]
    session[:message] = params[:message]
  end

  def edit
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
