class Note < ActiveRecord::Base
  
  belongs_to :user

  validates :content, presence: true

  default_scope order('created_at desc')
end
