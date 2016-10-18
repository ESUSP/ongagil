# This will guess the User class

#SAMPLE USE
# Returns a User instance that's not saved
#user = build(:user)

# Returns a saved User instance
#user = create(:user)

# Returns a hash of attributes that can be used to build a User instance
#attrs = attributes_for(:user)

# Returns an object with all defined attributes stubbed out
#stub = build_stubbed(:user)

FactoryGirl.define do
  
  def genrnd(tam, acc = '')
    if (tam <= 0)
      acc
    else
      genrnd(tam-1,acc+rand(10).to_s)
    end
  end

  rn = "#{genrnd(4)}"
  rpwd = "#{genrnd(10)}"
  rphone = "(#{genrnd(2)}) "+ #(DDD)
            "#{genrnd(5)}-#{genrnd(4)}"

  #Geração de aleatórios para usuários
  factory :usuario_aleatorio, class: Usuario do
    email "spectest#{rn}@gmail.com"
    nome "spectest#{rn}"
    endereco "Rua spectest #{rn}"
    telefone rphone
    estado {ListasPadrao::UF.sample}
    cidade {['São Paulo', 'São José dos Campos', 'Monte Verde'].sample}
    ocultar {[nil,false,true].sample}  
    password rpwd
    password_confirmation rpwd
  end

  factory :usuario_admin, class: Usuario do
    email 'admin@admin.com'
    nome 'Usuario Administrador'
    password '12345'
    password_confirmation '12345'
  end

  factory :usuario, aliases: [:usuario_valido] do
    email "teste@teste.com"
    nome "teste"
    endereco "Rua teste"
  	telefone "(11) "+ #(DDD)
  	  			"91234-1234"
  	estado 'SP'
  	cidade "São Paulo"
  	ocultar false
  	password "123456"
  	password_confirmation "123456"
  end



end