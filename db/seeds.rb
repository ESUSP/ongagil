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
genu(30)

