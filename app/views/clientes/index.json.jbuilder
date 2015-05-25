json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :conjuge, :endereco, :bairro, :cep, :estado_id, :cidade_id, :tresidencial, :tcelular, :cpf, :rg
  json.url cliente_url(cliente, format: :json)
end
