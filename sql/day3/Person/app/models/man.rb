class Man < ActiveRecord::Base
  validates :name, presence: true
  validates :house_id, presence: true
end
