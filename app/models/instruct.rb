class Instruct < ApplicationRecord
  has_many :instructs, class_name: 'UserInstruct', inverse_of: :user
  has_many :users, through: :instructs
end
