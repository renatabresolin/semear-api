class Learn < ApplicationRecord

  CATEGORY = [ 'Revisão de Currículo', 'Revisão de Portifólio', 'Simulação de Entrevistas', 'Orientação de Carreira', 'Ajuda Técnica']

  belongs_to :user
  validates :category, presence: true
end
