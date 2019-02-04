class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :postable, polymorphic: true
      t.string :content, null: false
      t.string :social_media, null: false
      t.string :link, null: false

      t.datetime :created_at, null: false
    end
    add_index :posts, [:social_media, :postable_type, :created_at]
  end
end
