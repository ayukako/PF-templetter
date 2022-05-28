class Admin::PapersController < ApplicationController
  def new
    @paper = Paper.new
  end

  def show
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
  end

  def paper_params
    params.require(:paper).permit(:name, :image)
  end
end
