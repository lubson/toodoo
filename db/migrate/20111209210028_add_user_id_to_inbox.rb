class AddUserIdToInbox < ActiveRecord::Migration
  def change
    add_column :inboxes, :user_id, :integer
  end
end
