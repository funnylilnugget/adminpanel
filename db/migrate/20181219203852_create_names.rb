class CreateNames < ActiveRecord::Migration[5.2]
  def change
    create_table :names do |t|
      t.date :start_date
      t.date :end_date
      t.integer :teacher_id
      t.integer :student_id
      t.integer :course_id

      t.timestamps
    end
  end
end
