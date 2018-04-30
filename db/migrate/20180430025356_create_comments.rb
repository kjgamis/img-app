class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :comment
      t.integer :photo_id

      t.timestamps
    end
  end
end
