class Note < ActiveRecord::Base
	validates :content, presence: true
end
