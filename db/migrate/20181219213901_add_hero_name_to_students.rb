class AddHeroNameToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :hero_name, :string
  end
end
