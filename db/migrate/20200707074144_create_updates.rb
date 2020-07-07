class CreateUpdates < ActiveRecord::Migration[6.0]
  def change
    create_table :updates do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
