class AddChildFields < ActiveRecord::Migration[6.0]
  def change
    add_column :children, :image, :string
    add_column :children, :description, :string
  end
end
