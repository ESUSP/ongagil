class Doador < ApplicationRecord
    
    has_many :doacaos
    
    validates :nome, presence:true
    validates :endereco, presence:true
    validates :telefone, presence:true
    
    def self.search(query)
        where("nome ilike ?", "%#{query}%")
    end
    
end
