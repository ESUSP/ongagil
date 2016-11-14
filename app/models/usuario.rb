class Usuario < ApplicationRecord
  attr_accessor :old_password
  has_many :ongs, dependent: :nullify

  has_secure_password

  validates :email,
    presence: {message: 'Campo obrigatório.'},
    uniqueness: {message: 'O e-mail digitado já é utilizado.'},
    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, message: "Formato de e-mail" }

  validates :password,
    presence: {message: 'Campo obrigatório.'},
    length: { minimum: 5, maximum: 40, message: 'Senha deve ter no mínimo 5 e no máximo 40 caracteres'},
    confirmation: {message: 'A senha repetida não confere.'},
    on: :create

  validates :termos_de_uso,
    acceptance: {message: 'É necessário aceitar os termos de serviço.'},
    on: :create

  def self.pesquisar(phash)
    #lowercase parameters
    @nome = phash[:nome].nil? ? nil : phash[:nome].downcase
    @email = phash[:email].nil? ? nil : phash[:email].downcase
    @telefone = phash[:telefone].nil? ? nil : phash[:telefone].downcase

    if phash[:nome] || phash[:email] || phash[:telefone]
      Usuario.all.where(['coalesce(lower(nome),\'\') LIKE ? and coalesce(lower(email),\'\') LIKE ? and coalesce(telefone,\'\') LIKE ?', "%#{@nome}%", "%#{@email}%", "%#{@telefone}%"])
    else
      Usuario.all
    end
  end
end
