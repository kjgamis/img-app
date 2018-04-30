class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :artist
      t.string :title
      t.string :photo
      t.integer :user_id

      t.timestamps
    end
  end
end
