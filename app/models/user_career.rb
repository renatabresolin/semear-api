class UserCareer < ApplicationRecord
  belongs_to :career
  belongs_to :user
end
