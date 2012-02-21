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
      when 'active'   then self.status = 'complete'
      when 'complete' then self.status = 'active'
    end
  end

private
  def set_status_and_due
    case status
      when 'today'     then self.due = Date.today
      when 'tomorrow'  then self.due = Date.tomorrow
      when 'this_week' then self.due = Date.today.end_of_week
      when 'next_week' then self.due = Date.today.next_week.end_of_week
    end
    
    self.status = 'active' unless status == 'complete'
  end
end