class Admin::ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
    redirect_to admin_article_path(@article)
    else
    render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.delete
    redirect_to admin_items_path
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to admin_article_path(@article.id)
  end

  def article_params
    params.require(:article).permit(:name, :content)
  end
end
