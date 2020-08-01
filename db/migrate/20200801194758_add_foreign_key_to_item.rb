class AddForeignKeyToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :child_id, :integer
  end
end
