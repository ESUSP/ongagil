#feature/doacao_cadastro.feature
Feature: Criar Nova Doacao
Como um usuário
Eu quero cadastrar uma nova doacao
Para poder realizar a entrega dos recursos para as Atividades

Scenario: Visitar Tela de Cadastro de Doacao
When Eu acesso a pagina de cadastro de doacao
Then Eu devo ver o fómulário para criar

Scenario: Cadastrar Nova Doacao
When Eu acesso a pagina de cadastro de doacao
And Eu preencho o formulário de criação com os seguintes atributos:
	|doacao_data    		  		| 25/12/2016         	|
	|doacao_valor       			| 250					|
And Eu clico em Salvar/Incluir