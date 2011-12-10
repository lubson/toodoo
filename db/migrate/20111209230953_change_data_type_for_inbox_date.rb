class ChangeDataTypeForInboxDate < ActiveRecord::Migration
  def up
    change_table :inboxes do |t|
      t.change :date, :date
    end
  end

  def down
    change_table :inboxes do |t|
      t.change :date, :datetime
    end
  end
end
