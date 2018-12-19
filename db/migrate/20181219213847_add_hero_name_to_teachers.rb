class AddHeroNameToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :hero_name, :string
  end
end
