class NotesController < ApplicationController
  
  respond_to :html, :js
  
  def index
    @note  = Note.new
    @notes = Note.all.reverse
  end

  def create
    @note = Note.new(params[:note])
    @note.save
 
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
    gflash notice: 'Note has been removed.'
    
    respond_with @note
  end
end