class User < ActiveRecord::Base
  has_many :polls,
  primary_key: :id,
  foreign_key: :author_id,
  class_name: :Poll

  belongs_to :responses,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :Response
end
