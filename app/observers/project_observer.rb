class ProjectObserver < ActiveRecord::Observer

  def before_update(project)
    project.tasks.update_all(status: :complete) if project.status == 'completed'
  end
end
