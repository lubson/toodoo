class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :name
      t.references :project
      t.string :status
      t.date :due

      t.timestamps
    end
    add_index :tasks, :project_id
  end
end
