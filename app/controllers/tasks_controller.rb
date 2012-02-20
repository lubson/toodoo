class TasksController < ApplicationController

  before_filter :find_project

  def new
    @task = @project.tasks.build

    respond_with @task
  end

  def create
    @task = @project.tasks.create(params[:task])
    
    respond_with @task
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_with @task
  end

private
  def find_project
    @project = Project.find(params[:project_id])
  end
end
