class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :first
      t.string :last
      t.string :middle
      t.string :prefix
      t.string :suffix

      t.timestamps null: false
    end
  end
end
