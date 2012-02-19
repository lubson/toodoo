class Task < ActiveRecord::Base
  belongs_to :project

  before_create :init

  scope   :recent, order('due asc')

  scope :by_status, -> status do
    where(status: status)
  end

  def init
      self.status = 'active'
  end
end
