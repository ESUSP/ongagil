#feature/projeto_cadastro.feature
Feature: Cadastrar Novo Projeto
Como um usuário
Eu quero cadastrar um novo projeto
Para poder administrar os projetos sociais da ONG

Scenario: Acessar Página de Cadastro de Projeto
When Eu acesso a pagina de cadastro de projetos
Then Eu devo ver o fómulário de cadastro

Scenario: Cadastrar Novo Projeto
When Eu acesso a pagina de cadastro de projetos
And Eu preencho o formulário de cadastro com os seguintes atributos:
	|projeto_Projeto    		  		| CriançaFeliz   	|
	|projeto_DescricaoProjeto   		  		| Arrecadação e entrega de presentes para crianças carentes de Sorocaba, no dia do Natal 	|
	|projeto_Status    			| Ativo					|
  |projeto_Ong 	| PapaiNoel	       	|
  |projeto_RespNome	| Rafael	       	|
And Eu pressiono o botão Enviar