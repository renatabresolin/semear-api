class Career < ApplicationRecord
  has_many :careers, class_name: 'UserCareer', inverse_of: :user
  has_many :users, through: :careers
end
