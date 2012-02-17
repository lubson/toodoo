class Project < ActiveRecord::Base
  belongs_to :user

  after_create :default_value

  scope   :active, where(status: 'active')
  scope   :completed, where(status: 'completed')
  scope   :later, where(status: 'post_poned')
  scope   :default, where(status: 'default').first()
  scope   :recent, order('created_at desc')

  def default_value
    self.status = 'active'
  end
  
end
