class Project < ActiveRecord::Base
  belongs_to :user
  has_many   :tasks

  after_initialize do
    self.status = 'active' if self.status.empty?
  end

  scope :default, where(status: 'default').first
  scope :recent, order('deadline asc')
  scope :by_status, -> status { where(status: status) }
end
