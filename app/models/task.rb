class Task < ActiveRecord::Base
  belongs_to :project

  after_initialize do
    self.status = 'active' if self.status.empty?
  end

  scope :recent, order('due asc')
  scope :by_status, -> status { where(status: status) }
end