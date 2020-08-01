class AddDocumentsToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :document, :string
  end
end
