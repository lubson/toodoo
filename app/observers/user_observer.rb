class UserObserver < ActiveRecord::Observer

  def after_create(user)
    project = user.projects.create(name: 'default')
    project.status = 'default'
  end
end