require 'spec_helper'

describe ProjectsController do
  let(:project) do
    project = Factory(:project)
    project
  end

  context "unregistered / unlogged users" do

    {
      'index'  => 'get',
      'show'   => 'get',
      'new'    => 'get',
      'create' => 'post',
      'edit'   => 'get',
      'save'   => 'put',
      'delete' => 'delete'
    }.each do |action, method|
      it "cannot access the #{action} action" do
        send(method, action.dup, id: project.id)
        response.should redirect_to(root_path)
        flash[:alert].should eql('You must be logged in before proceeding.')
      end
    end
  end
end