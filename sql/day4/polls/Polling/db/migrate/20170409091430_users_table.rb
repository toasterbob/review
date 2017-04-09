class UsersTable < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_name, unique: true
      t.timestamps
    end
  end
end
