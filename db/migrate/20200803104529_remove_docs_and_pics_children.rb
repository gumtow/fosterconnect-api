class RemoveDocsAndPicsChildren < ActiveRecord::Migration[6.0]
  def change
      remove_column :children, :documents
      remove_column :children, :pictures
  end
end
