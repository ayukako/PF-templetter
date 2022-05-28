class Admin::ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
    redirect_to admin_items_path(@article)
    else
    render :new
    end
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def update
  end

  def article_params
    params.require(:article).permit(:name, :image, :content)
  end
end
