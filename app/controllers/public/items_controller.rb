class Public::ItemsController < ApplicationController
  def new
  end

  def index
    @envelopes = Envelope.all
    @papers = Paper.all
    @fonts = Font.all
    @articles = Article.all
  end

  def show
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
