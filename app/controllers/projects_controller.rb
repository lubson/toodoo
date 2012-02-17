class ProjectsController < ApplicationController

  after_filter :respond_with_project, except: [:index, :new]

  def index
  	@projects = current_user.projects.recent.active
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(params[:project])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def save
    @project = Project.find(params[:id])
    @project.update_attributes(params[:id])
  end

  def delete
    @project = Project.find(params[:id])
    @project.destroy
  end
  
private
  def respond_with_project
    respond_with @project
  end
end
