class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :content
      t.string :status
      t.integer :category
      t.boolean :show
      t.string :url

      t.timestamps
    end
  end
end
