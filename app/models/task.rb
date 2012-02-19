class Task < ActiveRecord::Base
  belongs_to :project

  after_initialize do |active|
    self.status = 'active'
  end

  scope :recent, order('due asc')
  scope :by_status, -> status do
    where(status: status)
  end
end
