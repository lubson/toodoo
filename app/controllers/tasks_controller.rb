class TasksController < ApplicationController

  before_filter :find_project

  def new
    @task = @project.tasks.create(params[:task])

    respond_with @task
  end

private
  def find_project
    @project = Project.find(params[:project_id])
  end
end
