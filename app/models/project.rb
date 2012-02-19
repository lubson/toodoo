class Project < ActiveRecord::Base
  belongs_to :user
  has_many   :tasks

  after_initialize do |project|
    self.status = 'active'
  end

  scope :default, where(status: 'default').first
  scope :recent, order('deadline asc')
  scope :by_status, -> status do
    where(status: status)
  end
end
