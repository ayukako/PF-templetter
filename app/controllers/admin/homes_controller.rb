class Admin::HomesController < ApplicationController
  def top
    @order = Order.where(id:[1,2])
  end
end
