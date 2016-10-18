class Atividade < ApplicationRecord

  validates :projetoid, presence:true
  validates :responsavelid, presence:true
  validates :atividade, presence:true
  validates :situacao, presence:true
  validates :atuacao, presence:true

end
