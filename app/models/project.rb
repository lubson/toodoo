class Project < ActiveRecord::Base
  belongs_to :user
  

  before_create :init

  scope   :default, where(status: 'default').first
  scope   :recent, order('created_at desc')

  scope :by_status, -> status do
    where(status: status)
  end

  def init
    self.status || 'active'
  end
end
