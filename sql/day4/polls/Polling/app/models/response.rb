class Response < ActiveRecord::Base
  belongs_to :user,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :User

  belongs_to :answer,
  primary_key: :id,
  foreign_key: :answer_id,
  class_name: :AnswerChoice

end
