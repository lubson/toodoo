class Task < ActiveRecord::Base
  belongs_to :project

  after_initialize do
    self.status = 'active' if status.blank?
  end
  before_save :set_status_and_due

  scope :recent, order('due asc')
  scope :by_status, -> status { where(status: status) }

  def check!
    case status
      when 'active'    then self.status = 'completed'
      when 'completed' then self.status = 'active'
    end
  end

private
  def set_status_and_due
    # here goes date decision
    self.status = 'active' unless status == 'completed'
  end
end