class Learn < ApplicationRecord
  has_many :users, through: :user_learns
end
