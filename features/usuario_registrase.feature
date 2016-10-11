#feature/usuario_registrase.feature
Feature: Usuario Registra-se
Como um usuário
Eu quero me registrar no site
Para poder utilizar o serviço

Scenario: Usuario Acessa Registrar-se
When Eu acesso a pagina de registro
Then Eu devo ver um fómulário

Scenario: Usuario Preenche Registrar-se
When Eu acesso a pagina de registro
And Eu preencho o formulário com os seguintes atributos:
	|usuario_email    		  		| jeanadam@gmail.com   	|
	|usuario_nome   		  		| Jean Adam Calixto 	|
	|usuario_password    			| 12345					|
	|usuario_password_confirmation 	| 12345			       	|
And Eu clico em Registrar