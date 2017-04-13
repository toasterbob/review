class Response < ActiveRecord::Base

  validates :answer_id, :user_id, presence: true

  belongs_to :respondent,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :User

  belongs_to :answer_choice,
  primary_key: :id,
  foreign_key: :answer_id,
  class_name: :AnswerChoice

  has_one :question,
  through: :answer_choice,
  source: :question

  def sibling_responses
    self.question.responses.where.not(id: self.id)
  end

  def respondent_already_answered?
    if sibling_responses.exists?(user_id: self.user_id)
      true
    else
      false
    end
  end

end
