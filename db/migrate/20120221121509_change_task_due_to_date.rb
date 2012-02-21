class ChangeTaskDueToDate < ActiveRecord::Migration
  
  def up
    change_table :tasks do |t|
      t.change(:due, :date)
    end
  end

  def down
    change_table :tasks do |t|
      t.change(:due, :datetime)
    end
  end
end
