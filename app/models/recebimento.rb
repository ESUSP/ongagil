class Recebimento < ApplicationRecord
    validates :tipoRecebimento, presence:true
    validates :dataRecebimento, presence:true
end
