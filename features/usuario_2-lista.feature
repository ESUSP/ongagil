#feature/usuario_lista.feature
Feature: Usuario Lista Usuários
Como um administrador
Eu quero listar os usuários da ongagil

Scenario: Scenario: Usuario Acessa Listar Usuários
When Eu acesso a pagina de registro
And Eu preencho o formulário registrar com os seguintes atributos:
	|usuario_email    		  		| teste@gmail.com   	|
	|usuario_nome   		  		| Teste Cucumber Nome 	|
	|usuario_password    			| 12345					|
	|usuario_password_confirmation 	| 12345			       	|
And Eu clico em registrar
And Eu acesso a pagina de registro
And Eu preencho o formulário registrar com os seguintes atributos:
	|usuario_email    		  		| teste2@gmail.com   	|
	|usuario_nome   		  		| Teste2 Cucumber Nome 	|
	|usuario_password    			| 12345					|
	|usuario_password_confirmation 	| 12345			       	|
And Eu clico em registrar
And Eu acesso a pagina de lista de usuários
Then Eu devo ver na lista de usuários os usuários "Teste Cucumber Nome" e "Teste2 Cucumber Nome"