class Response
  has_many :answer_choices,
  primary_key: :id,
  foreign_key: :answer,
  class_name: :Response

  belongs_to :respondent,
  primary_key: :id,
  
end
