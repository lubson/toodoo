require 'spec_helper'

describe NotesController do
  let(:note) do
    note = Factory(:note)
    note
  end

  context "unregistered / unlogged users" do

    {
      'index'  => 'get',
      'create' => 'post',
      'edit'   => 'get',
      'update'   => 'put',
      'destroy' => 'delete'
    }.each do |action, method|
      it "cannot access the #{action} action" do
        send(method, action.dup, id: note.id)
        response.should redirect_to(root_path)
        flash[:alert].should eql('You must be logged in before proceeding.')
      end
    end
  end
end