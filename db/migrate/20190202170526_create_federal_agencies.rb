class CreateFederalAgencies < ActiveRecord::Migration[5.1]
  def change
    create_table :federal_agencies do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :facebook_id
      t.string :twitter_username

      t.timestamps
    end
  end
end
