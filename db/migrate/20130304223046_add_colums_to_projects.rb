class AddColumsToProjects < ActiveRecord::Migration
  def change
	add_column :projects, :platform, :string
	add_column :projects, :language, :string
	add_column :projects, :technologies_used, :string
  end
end
