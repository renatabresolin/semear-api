class UserLearn < ApplicationRecord
  belongs_to :learn
  belongs_to :user
end
