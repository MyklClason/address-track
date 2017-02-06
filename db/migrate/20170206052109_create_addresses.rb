class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.string :zip
      t.string :country
      t.float :latitude
      t.float :longitude
      t.string :map_url

      t.timestamps null: false
    end
  end
end
