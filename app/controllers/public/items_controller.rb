class Public::ItemsController < ApplicationController
  def new
    @item = Item.new
    @envelopes = Envelope.all
    @papers = Paper.all
    @fonts = Font.all
    @articles = Article.all
    # @envelope = Envelope.find(params[envelope_id])
    # @paper = Paper.find(params[paper_id])
    # @font = Font.find(params[font_id])
    # @article = Article.find(params[article_id])
  end

  def index
    @envelopes = Envelope.all
    @papers = Paper.all
    @fonts = Font.all
    @articles = Article.all
  end

  def confirm
  end

  def edit
  end

  def update
  end

  def create
  end

  def destroy_all
  end




end
