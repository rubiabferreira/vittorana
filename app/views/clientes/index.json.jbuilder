json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :conjuge, :endereco, :bairro, :cep, :estado, :cidade, :tresidencial, :tcelular, :cpf, :rg, :email, :dependente
  json.url cliente_url(cliente, format: :json)
end
