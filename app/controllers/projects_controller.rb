class ProjectsController < ApplicationController


  def index
  	@projects = current_user.projects.recent.active
    @note = Note.new # jen pro testovani, pak odstranit
  end

  def new
    @project = Project.new
    @note = Note.new # jen pro testovani, pak odstranit

  end
end
