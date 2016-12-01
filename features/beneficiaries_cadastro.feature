#feature/beneficiario_cadastrado.feature

#Feature: Beneficiario é cadastrado
#Como um gestor
#Eu quero cadastrar um beneficiario
#de forma a controlar os beneficiarios do sistema

#Scenario: Gestor Acessa formulário
#When Eu acesso a pagina beneficiarios
#Then Eu devo ver um fomulário

#Scenario: Gestor Preenche formulário
#When Eu acesso a pagina beneficiarios
#When Eu preencho:
#	|projeto    		  		| Projeto das criancas   	|
#	|nome   		  	    	| Ligia Cassia M. C. Santos	|
#	|dataNasc 		        	| 09/11/1992				|
#	|estadoCivil            	| Solteira			       	|
#	|rg    		  	         	| 49.122.363-8             	|
#	|cpf  		  	        	| 411.819.548-37           	|
#	|telefone    		     	| (11) 4328-9341		    |
#	|endereco 	                | Rua das Flores			|
#	|bairro    		  	    	| Penha                  	|
#	|estado   		  	     	| SP                    	|
#	|pais  		            	| Brasil				   	|
#	|cep	                    | 036.09-110			    |
#	|menor	                    | Nao		    	       	|
#	|responsavel            	| 		                	|
#And Eu clico no cadastrar

#Scenario: Beneficiario registrado
#When Eu preencho formulario com dados do beneficiario
#And Eu clico em salvar
#Then Eu devo ver mensagem salvo com sucesso

