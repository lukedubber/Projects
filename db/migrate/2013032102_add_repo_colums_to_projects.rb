class AddRepoColumsToProjects < ActiveRecord::Migration
  def change
	add_column :projects, :repo_type, :string
	add_column :projects, :repo, :string
  end
end
