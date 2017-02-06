class CreateFamilyMembers < ActiveRecord::Migration
  def change
    create_table :family_members do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :family_member_id

      t.timestamps null: false
    end
  end
end
