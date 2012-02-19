class Note < ActiveRecord::Base
  validates :content, presence: true

  scope :recent, order('deadline desc')
end
