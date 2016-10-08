class Projeto < ApplicationRecord
  validates_presence_of :Projeto #Nome do Projeto
  validates_presence_of :RespNome #Nome do Responsavel
  validates_presence_of :Ong #Nome da ONG
  validates_presence_of :Tipo #Tipo do Projeto  
end
