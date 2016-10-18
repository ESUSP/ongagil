json.extract! custo, :id, :tipo, :descricao, :data, :valor, :created_at, :updated_at
json.url custo_url(custo, format: :json)