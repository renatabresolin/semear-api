class Instruct < ApplicationRecord
  has_many :users, through: :user_instructs
end
