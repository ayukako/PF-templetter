class Public::ItemsChoicesController < ApplicationController

  def index
    envelope = Envelope.all
    @papers = Paper.all
    @fonts = Font.all
    @articles = Article.all
  end


  private

  def items_choices_params
    params.require(:items_choices).permit(:envelope_id, :paper_id, :font_id)
  end

end
