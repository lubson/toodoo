class NotesController < ApplicationController
    
  def index
    @notes = current_user.notes

    respond_with @notes
  end

  def create
    @note = current_user.notes.create(params[:note])
 
    respond_with @note
  end

  def edit
    @note = Note.find(params[:id])

    respond_with @note
  end

  def update
    @note = Note.find(params[:id])
    @note.update_attributes(params[:note])

    respond_with @note
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    
    respond_with @note
  end
end