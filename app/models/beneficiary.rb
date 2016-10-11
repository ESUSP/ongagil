class Beneficiary < ApplicationRecord

    
    validates :projeto, presence:true
    validates :nome, presence:true
    validates :telefone, presence:true
    validates :rg, presence:true
    validates :cpf, presence:true
    
end
