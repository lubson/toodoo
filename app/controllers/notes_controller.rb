class NotesController < ApplicationController

  def index
    @note  = Note.new
    @notes = Note.all
  end

  def create
    @note = Note.new(params[:note])
    if @note.save
      flash[:notice] = 'Note has been created.'
      redirect_to notes_path
    else
      flash[:alert] = 'Note has not been created.'
      redirect_to notes_path
    end
  end
end