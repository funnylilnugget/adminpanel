class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :password

      t.timestamps
    end
  end
end