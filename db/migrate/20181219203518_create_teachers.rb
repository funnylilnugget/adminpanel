class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.decimal :salary
      t.string :education
      t.string :cohort_id
      t.string :quirk

      t.timestamps
    end
  end
end
