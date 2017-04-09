class Poll

  belongs_to :author,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :User

  has_many :questions,
  primary_key: :id,
  foreign_key: :question_id,
  class_name: :Poll 
end
