class Admin::FontsController < ApplicationController
  def new
    @font = Font.new
  end

  def create
    @font = Font.new(font_params)
    if @font.save
    redirect_to admin_items_path(@font)
    else
    render :new
    end
  end

  def show
    @font = Font.find(params[:id])
  end

  def destroy
  end
 
  def fonts_params
    params.require(:font).permit(:name, :image)
  end
end
