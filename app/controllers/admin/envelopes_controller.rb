class Admin::EnvelopesController < ApplicationController
  def new
    @envelope = Envelope.new
  end

  def create
    @envelope = Envelope.new(envelope_params)
    if @envelope.save
    redirect_to admin_items_path(@envelope)
    else
    render :new
    end
  end

  def show
  end

  def destroy
  end

  def envelope_params
    params.require(:envelope).permit(:name, :image)
  end
end
