class ProjectsController < ApplicationController

  def index
  	@projects = current_user.projects.recent.by_status(params[:status])

    respond_with @projects
  end

  def show
    @project = Project.find(params[:id])
    
    respond_with @project
  end

  def new
    @project = Project.new

    respond_with @project
  end

  def create
    @project = current_user.projects.create(params[:project])
    
    respond_with @project
  end

  def edit
    @project = Project.find(params[:id])

    respond_with @project
  end

  def update
    @project = Project.find(params[:id])
    @project.update_attributes(params[:project])

    respond_with @project
  end

  def destroy
    @project = Project.find(params[:id])

    respond_with @project, location: projects_path(status: 'active')
  end
end
