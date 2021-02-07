class Learn < ApplicationRecord
  has_many :learns, class_name: 'UserLearn', inverse_of: :user
  has_many :users, through: :learns
end
