class User

  has_many :authored_polls,
  primary_key: :id,
  foreign_key: :poll_id,
  class_name: Poll 

end
