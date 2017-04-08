class CreatePolls < ActiveRecord::Migration[5.0]
  def change
    create_table :polls do |t|
      t.string :title
      t.integer :author_id
      t.timestamps
    end
  end
end
