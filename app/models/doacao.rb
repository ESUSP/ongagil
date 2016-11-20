class Doacao < ApplicationRecord
    belongs_to :doador
  
    validates :data, presence:true
    validates :tipo, presence:true
    validates :valor, presence:true
    
    def self.search(query)
        where("descricao ilike ?", "%#{query}%")
    end
    
end
