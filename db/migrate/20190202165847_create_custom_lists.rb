class CreateCustomLists < ActiveRecord::Migration[5.1]
  def change
    create_table :custom_lists do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :facebook_id
      t.string :twitter_username

      t.timestamps
    end
  end
end
