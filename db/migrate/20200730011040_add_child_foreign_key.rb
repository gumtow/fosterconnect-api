class AddChildForeignKey < ActiveRecord::Migration[6.0]
  def change
    add_column :children, :user_id, :integer
  end
end
