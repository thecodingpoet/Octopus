class AddTypeToCustomLists < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_lists, :type, :string
    add_index :custom_lists, :type
  end
end
