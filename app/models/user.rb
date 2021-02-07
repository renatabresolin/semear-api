class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :careers, class_name: 'UserCareer', inverse_of: :user
  has_many :learns, class_name: 'UserLearn', inverse_of: :user
  has_many :instructs, class_name: 'UserInstruct', inverse_of: :user

  validates :email, :name, :age, :description, presence: true
end
