class Public::ItemsController < ApplicationController
  def new
    @item = Item.new
    @envelope = Envelope.all
    @paper = Paper.all
    @font = Font.all
    @article = Article.all
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
