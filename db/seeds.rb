Usuario.destroy_all

#gerador de usuarios
def genu i
	def genrnd(tam, acc = '')
		if (tam <= 0); acc;else; genrnd(tam-1,acc+rand(10).to_s);end
	end
	i.times{
	rn = "#{genrnd(4)}"
	rpwd = "#{genrnd(10)}"
	rphone = "(#{genrnd(2)}) "+ #(DDD)
	       "#{genrnd(5)}-#{genrnd(4)}"

	Usuario.create(email: "spectest#{rn}@gmail.com",
	                nome:"spectest#{rn}",
	                endereco: "Rua spectest #{rn}",
	                telefone:  rphone ,
	                estado: "#{ListasPadrao::UF.sample}",
	                cidade: "#{['São Paulo', 'São José dos Campos', 'Monte Verde'].sample}",
	                ocultar: "#{[false,true].sample}",
	                password: rpwd,
	                password_confirmation: rpwd)}
end

defaultadmin = Usuario.create(email: 'admin@admin.com', nome:'Usuario Administrador', password:'12345', password_confirmation:'12345')
Usuario.create(email: 'jean@gmail.com', nome:'Jean Adam', password:'12345', password_confirmation:'12345')
genu(30)


#seeds for projeto

Projeto.destroy_all


Projeto.create(Projeto: "Minha Cada Minha Vida #1",
	                RespNome: "#{['José','Maria','João'].sample}",
	                Ong: "Ong Test",
									OngNumero: 1,
	                Tipo:  "Moradia" ,
	                DescricaoProjeto: "Projeto teste",
									Status: "Ativo",
									Area: "Teste",
									DataInicio: Date.today.at_beginning_of_month,
									DataFim: Date.today.at_beginning_of_month.next_month )

Projeto.create(Projeto: "CriançaFeliz",
	                RespNome: "#{['Testador', 'Testudo','Testão'].sample}",
	                Ong: "Ong Test",
									OngNumero: 2,
	                Tipo:  "Social" ,
	                DescricaoProjeto: "Campanha de Arrecadação de Brinquedos",
									Status: "Ativo",
									Area: "Teste",
									DataInicio: Date.today.at_beginning_of_month,
									DataFim: Date.today.at_beginning_of_month.next_month)

Atividade.destroy_all


Atividade.create(
				atividade: "Arrecadação de brinquedos",
				projeto: "CriançaFeliz",
				projetoid: 1 ,
				situacao: "Em andamento",
				atuacao: "Test",
				datainicio: Date.today.at_beginning_of_day ,
				datefim: Date.today.at_beginning_of_month.next_month ,
				cargahoras: 10,
				responsavelid: 2 ,
				responsavelnome: "Usuário Test")

Atividade.create(
				atividade: "Cadastramento",
				projeto: "Minha Casa Minha Vida #1",
				projetoid: 1 ,
				situacao: "Em andamento",
				atuacao: "Test",
				datainicio: Date.today.at_beginning_of_day ,
				datefim: Date.today.at_beginning_of_month.next_month ,
				cargahoras: 20,
				responsavelid: 2 ,
				responsavelnome: "Usuário Test")

Custo.create(
			tipo: "Cestas Básicas",
      descricao: "Compra de Cestas Básicas",
      data: Date.today.at_beginning_of_month.last_month,
      valor: 2000.00
)

Custo.create(
			tipo: "Material de Escritório",
      descricao: "Compra de Material de Escritório para Cadastramento",
      data: Date.today.at_beginning_of_month.last_month,
      valor: 3300.00
)

Custo.create(
			tipo: "Transporte",
      descricao: "Transporte de beneficiários para um lugar qualquer",
      data: Date.today.at_beginning_of_month.last_week,
      valor: 4030.00
)