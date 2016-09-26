json.extract! doador, :id, :nome, :endereco, :telefone, :frequencia, :forma, :data, :created_at, :updated_at
json.url doador_url(doador, format: :json)