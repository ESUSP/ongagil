#feature/usuario_altera_senha.feature
Feature: Usuario Altera Senha
Como um usuário
Eu quero alterar minha senha

Scenario: Usuario Altera Senha
When Eu logo no sistema como admin
And Eu acesso página de alteração de senha de usuário
And Eu preencho o formulário de alteração com os seguintes atributos:
	|usuario_old_password  		  	| 12345	    |
	|usuario_password    		  	| 54321 	|
	|usuario_password_confirmation  | 54321     |
And Eu clico em alterar
And Eu faço logoff
And Eu logo no sistema como admin
Then Não deve logar no sistema
