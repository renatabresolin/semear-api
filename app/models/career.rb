class Career < ApplicationRecord
  has_many :users, through: :user_careers
end
