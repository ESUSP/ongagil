class Usuario < ApplicationRecord
  validates :email, 
  			presence: {message: 'Campo obrigatório.'}, 
  			uniqueness: {message: 'O e-mail digitado já é utilizado.'}

  validates :senha, 
  			presence: {message: 'Campo obrigatório.'},
            length: { minimum: 5, maximum: 40, message: 'Senha deve ter no mínimo 5 e no máximo 40 caracteres'},
            confirmation: {message: 'A senha repetida não confere.'}

  validates :termos_de_uso, 
  			acceptance: {message: 'É necessário aceitar os termos de serviço.'}
end
