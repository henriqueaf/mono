class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :address
      t.integer :user_id

      t.timestamps
    end
  end
end
