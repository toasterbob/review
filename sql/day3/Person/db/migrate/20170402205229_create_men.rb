class CreateMen < ActiveRecord::Migration[5.0]
  def change
    create_table :men do |t|
      t.string :name
      t.integer :house_id
      t.timestamps
    end
  end
end
