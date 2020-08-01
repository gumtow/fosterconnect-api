class AddfileToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :file, :string
  end
end
