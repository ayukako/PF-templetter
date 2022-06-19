class Admin::PapersController < ApplicationController
  def new
    @paper = Paper.new
  end

  def show
    @paper = Paper.find(params[:id])
  end

  def create
    @paper = Paper.new(paper_params)
    if @paper.save
    redirect_to admin_items_path(@paper)
    else
    render :new
    end
  end

  def destroy
    @paper = Paper.find(params[:id])
    @paper.delete
    redirect_to admin_items_path
  end

private

  def paper_params
    params.require(:paper).permit(:name, :image)
  end
end
