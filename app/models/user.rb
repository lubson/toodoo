class User < ActiveRecord::Base
  has_many :inboxes
end
