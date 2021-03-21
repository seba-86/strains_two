class NotesController < ApplicationController
  
  before_action :set_wine
  def create
    @note = @wine.notes.new
  end

  private

  def set_wine
    @wine = Wine.find(params [:wine_id])
  end

  def note_params
    params.require(:notes).permit(:note_eonologist)
  end
end
