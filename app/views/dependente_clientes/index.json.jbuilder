json.array!(@dependente_clientes) do |dependente_cliente|
  json.extract! dependente_cliente, :id, :nome, :datanascimento
  json.url dependente_cliente_url(dependente_cliente, format: :json)
end
