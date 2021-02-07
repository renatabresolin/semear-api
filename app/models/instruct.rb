class Instruct < ApplicationRecord
  CATEGORY = [ 'Revisão de Currículo', 'Revisão de Portifólio', 'Simulação de Entrevistas', 'Orientação de Carreira', 'Ajuda Técnica']

  belongs_to :user
  validates :user_id, presence: true
end
