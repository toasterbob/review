class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :body
      t.integer :poll_id
      t.timestamps 
    end
  end
end
