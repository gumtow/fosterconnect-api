class AddPicArray < ActiveRecord::Migration[6.0]
  def change
    add_column :children, :pictures, :text, array: true, default: []
  end
end
