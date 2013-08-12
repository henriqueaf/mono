class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :address
      t.integer :user_id

      t.timestamps
    end
  end
end
