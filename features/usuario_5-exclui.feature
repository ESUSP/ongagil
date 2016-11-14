#feature/usuario_altera_senha.feature
Feature: Administrador Exclui Usuario
Como um administrador
Eu quero excluir um usuario

Scenario: Usuario Exclui Usuario
When Eu logo no sistema como admin
And Eu tenho um usuario aleatorio cadastrado
And Eu acesso a pagina de lista de usuários
And Eu filtro a pagina por nome "spec"
And Eu clico excluir no primeiro usuario da lista
Then Não deve haver mais de 1 usuário no sistema
