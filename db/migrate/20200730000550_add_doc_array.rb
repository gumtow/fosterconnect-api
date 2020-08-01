class AddDocArray < ActiveRecord::Migration[6.0]
  def change
    add_column :children, :documents, :text, array: true, default: []
  end
end
