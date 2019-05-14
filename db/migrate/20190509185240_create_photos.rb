class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.integer :place_id
      t.text :caption
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
