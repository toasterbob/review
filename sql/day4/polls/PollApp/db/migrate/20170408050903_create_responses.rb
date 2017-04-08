class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.integer :user_id
      t.integer :answer
      t.timestamps 
    end
  end
end
