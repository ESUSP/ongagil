class Usuario < ApplicationRecord
  has_secure_password

  validates :email, 
  			presence: {message: 'Campo obrigatório.'}, 
  			uniqueness: {message: 'O e-mail digitado já é utilizado.'},
        format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, message: "Formato de e-mail" }

  validates :password, 
  			presence: {message: 'Campo obrigatório.'},
            length: { minimum: 5, maximum: 40, message: 'Senha deve ter no mínimo 5 e no máximo 40 caracteres'},
            confirmation: {message: 'A senha repetida não confere.'}

  validates :termos_de_uso, 
  			acceptance: {message: 'É necessário aceitar os termos de serviço.'}


  def self.LogarAdmin()
    usr = Usuario.find_by(email: 'admin@admin.com')
    session[:id] = usr.id
  end    
end
