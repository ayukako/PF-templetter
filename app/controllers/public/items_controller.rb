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
    #byebug
    envelope_id = params[:envelope_id]
    paper_id = params[:paper_id]
    font_id = params[:font_id]
    #article_id = params[:article_id]
    message = params[:message]
     @envelope = Envelope.find(envelope_id)
     @paper = Paper.find(paper_id)
     @font = Font.find(font_id)
     #@article = Article.find(article_id)
     @message = message
     session[:message] = message
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

  # def paper_params
  #   params.require(:paper).permit(:paper_id, :image)
  # end

  # def font_params
  #   params.require(:font).permit(:font_id, :image)
  # end

  # def article_params
  #   params.require(:article).permit(:name)
  # end

end
