class CreateAnswerChoice < ActiveRecord::Migration[5.0]
  def change
    create_table :answer_choices do |t|
      t.string :answer_text
      t.integer :question_id 
      t.timestamps
    end
  end
end
