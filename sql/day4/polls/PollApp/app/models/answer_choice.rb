class AnswerChoice
  belongs_to :question,
  primary_key: :id,
  foreign_key: :question_id,
  class_name: :Question

  has_many :response,
  primary_key: :id,
  foreign_key: :answer,
  class_name: :Response 
end
