class Atividade < ApplicationRecord

  validates :projetoid, presence:true
  validates :responsavelid, presence:true
  validates :atividade, presence:true
  validates :situacao, presence:true
  validates :atuacao, presence:true

  #Relacionamento entre Atividade e Projeto: 1 <> 1
  #belongs_to :projeto
end
