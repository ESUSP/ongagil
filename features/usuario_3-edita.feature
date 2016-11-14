#feature/usuario_edita.feature
Feature: Usuario Altera Dados
Como um usuário
Eu quero alterar meus dados

Scenario: Scenario: Usuario Alterar Usuário
When Eu logo no sistema como admin
And Eu acesso página de alteração de cadastro de usuário
And Eu preencho o formulário de alteração com os seguintes atributos:
	|usuario_telefone  		  		| (11)9423-1232	    	|
	|usuario_endereco  		  		| Teste Cucumber End 	|
And Eu clico em alterar
Then Eu devo ver a confirmação de alteração com o telefone "(11)9423-1232" e endereço "Teste Cucumber End"