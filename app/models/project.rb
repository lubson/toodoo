class Project < ActiveRecord::Base
  belongs_to :user
  has_many   :tasks

  before_create :init

  scope   :default, where(status: 'default').first
  scope   :recent, order('deadline asc')

  scope :by_status, -> status do
    where(status: status)
  end

  def init
    self.status =  status || 'active'
  end
end
