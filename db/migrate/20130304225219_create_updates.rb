class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string :title
      t.text :content
      t.date :date
      t.references :project

      t.timestamps
    end
    add_index :updates, :project_id
  end
end
