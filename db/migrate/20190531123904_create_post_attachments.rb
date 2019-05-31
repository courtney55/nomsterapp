class CreatePostAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :post_attachments do |t|
      t.integer :post_id
      t.image.url :picture

      t.timestamps
    end
  end
end
