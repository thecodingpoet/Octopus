class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :name, :null => false, :unique => true
      t.string :category, :null => false

      t.timestamps
    end
  end
end
