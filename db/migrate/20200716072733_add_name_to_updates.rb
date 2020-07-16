class AddNameToUpdates < ActiveRecord::Migration[6.0]
  def change
    add_column :updates, :name, :string
    add_column :updates, :contents, :string
  end
end
