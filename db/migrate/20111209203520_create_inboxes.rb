class CreateInboxes < ActiveRecord::Migration
  def change
    create_table :inboxes do |t|
      t.datetime :date
      t.text :content

      t.timestamps
    end
  end
end
