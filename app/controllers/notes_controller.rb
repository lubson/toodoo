class NotesController < ApplicationController

  def index
    @note  = Note.new
    @notes = Note.all.reverse
  end

  def create
    @note = Note.new(params[:note])
    respond_to do |format|  
      if @note.save
          flash[:notice] = "Note has been created."
          format.html { redirect_to notes_path }
          format.json { head :ok }
      else
        flash[:alert] = 'Note has not been created.'
          format.html { redirect_to notes_path }
          format.json { head :ok }
      end
      format.js
    end 
  end

  def update
    @note = Note.find(params[:id])
    respond_to do |format|
      if @note.update_attributes(params[:note])
        format.html { redirect_to(@note, :notice => 'User was successfully updated.') }
        format.json { respond_with_bip(@note) }
      else
        format.json { respond_with_bip(@note) }
      end
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    gflash notice: 'Note has been removed.'
    respond_to do |format|
      format.html { redirect_to notes_path }
      format.json { head :ok }
      format.js
    end
  end
end