#feature/usuario_registrase.feature
Feature: Cadastro de Projetos
Como um usuário do serviço
Eu quero criar um novo projeto
Para gerir o projeto da ONG no site

Scenario: Usuário Acessa Cadastro de Projetos
When Eu acesso a página de cadastro de projetos
Then Eu devo ver um fómulário

Scenario: Usuário Preenche Formulário de Cadastro
When Eu acesso a página de projetos
And Eu preencho o formulário com os seguintes atributos:
#	|projeto_nome			| Jean Adam Calixto 	|
# |projeto_respnome	| 12345					|
#	|projeto_ongnome 	| 12345			       	|
And Eu clico em Criar