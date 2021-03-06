class Public::ItemsController < ApplicationController

  before_action :authenticate_customer!, except: [:index, :new, :confirm]

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
    unless params[:item_id]
      @envelope = Envelope.find(confirm_params[:envelope_id])
      @paper = Paper.find(confirm_params[:paper_id])
      @font = Font.find(confirm_params[:font_id])
      if confirm_params[:article_id].nil?
        @article = Article.find_by(content: confirm_params[:article_content])
      else
        @article = Article.find(confirm_params[:article_id])
      end
      @message = confirm_params[:message]
      @item = Item.new(envelope: @envelope, paper: @paper, font: @font, article_id: @article.id, content: @message)
      @item.customer_id = current_customer.id
      @artcile_id = @article.id
      @item.save
      redirect_to confirm_public_customers_items_path(item_id: @item.id)
    else
      @item = Item.find(params[:item_id])
      @envelope = @item.envelope
      @paper = @item.paper
      @font = @item.font
      @article = @item.article
      @article_id = @item.article_id
      @message = @item.content
    end
  end

  def edit
    @item = Item.find(params[:id])
    @envelopes = Envelope.all
    @papers = Paper.all
    @fonts = Font.all
    @articles = Article.all

    @selected_envelope = params[:item][:envelope_id]
    @selected_paper_id = params[:item][:paper_id]
    @selected_font_id = params[:item][:font_id]
    @selected_article_id = params[:item][:article_id]
    @message = params[:item][:message]
  end

  def update
    @item = Item.find(params[:id])
    @item.customer_id = current_customer.id
    @article = Article.find(params[:item][:article_id])
    @item.update!(
    envelope_id: params[:item][:envelope_id],
    paper_id: params[:item][:paper_id],
    font_id: params[:item][:font_id],
    article_id: @article.id,
    content: params[:item][:message]
    )
    redirect_to confirm_public_customers_items_path(item_id: @item.id)
  end

  def create
  end

  def destroy_all
    @item = Item.find(params[:id])
    @item.delete
    redirect_to public_homes_top_path
  end

private

  def item_params
    params.require(:item).permit(:envelope_id, :paper_id,:font_id, :article_id, :message)
  end

  def confirm_params
    params.require(:item).permit(:envelope_id, :paper_id,:font_id, :article_id,:article_content, :message)
  end


end
