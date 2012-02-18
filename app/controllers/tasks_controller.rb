class TasksController < ApplicationController

  def new
    @task = @project.tasks.create(params[:task])

    respond_with @task
  end
end
