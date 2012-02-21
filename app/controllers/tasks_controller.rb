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

  def check
    @task = Task.find(params[:task_id])
    p @task.name
    @task.check!
    @task.save

    respond_with @task
  end

  def edit
    @task = Task.find(params[:id])

    respond_with @task
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes(params[:task])

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
