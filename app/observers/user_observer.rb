class UserObserver < ActiveRecord::Observer

  def after_create(user)
    project = user.projects.create(name: 'default', status: 'default')
  end
end