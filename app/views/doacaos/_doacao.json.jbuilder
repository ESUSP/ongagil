json.extract! doacao, :id, :data, :doador_id, :tipo, :valor, :pago, :forma, :descricao, :observacao, :created_at, :updated_at
json.url doacao_url(doacao, format: :json)