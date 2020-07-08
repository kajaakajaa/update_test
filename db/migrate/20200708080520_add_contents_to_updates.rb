class AddContentsToUpdates < ActiveRecord::Migration[6.0]
  def change
    add_column :updates, :contents, :string
  end
end
