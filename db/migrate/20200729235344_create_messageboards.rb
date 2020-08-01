class CreateMessageboards < ActiveRecord::Migration[6.0]
  def change
    create_table :messageboards do |t|
      t.string :subject
      t.string :content
      t.string :status

      t.timestamps
    end
  end
end
