class CreatePostsTags < ActiveRecord::Migration[5.1]
  def change
    create_table :posts_tags do |t|
      t.string :post_id
      t.string :tag_id

      t.timestamps
    end
  end
end
