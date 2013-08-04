class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :address

      t.timestamps
    end
  end
end
