class Career < ApplicationRecord
  CATEGORY = ['Produto', 'Tecnologia/Desenvolvimento', 'Design', 'Liderança/Agile','Data']

  belongs_to :user
  validates :user_id, :category, presence: true
end
