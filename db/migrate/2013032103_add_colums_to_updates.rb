class AddColumsToUpdates < ActiveRecord::Migration
  def change
	add_column :updates, :commit, :string
  end
end
