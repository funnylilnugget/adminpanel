class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :education
      t.string :cohort_id
      t.string :quirk

      t.timestamps
    end
  end
end
