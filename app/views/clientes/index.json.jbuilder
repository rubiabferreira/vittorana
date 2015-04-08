json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :conjuge, :endereco, :bairro, :cep, :estado, :cidade, :tresidencial, :tcelular, :cpf, :rg, :evento, :horarioFesta, :duracaoFesta, :diaSemana, :cortesia, :valorConsumacao, :ItensAvulsos, :dataEvento, :qtdeCriancas, :qtdeAdultos, :tema, :gerarContrato, :valor, :nDocumento, :desconto, :entrada, :formaPagamento, :obs
  json.url cliente_url(cliente, format: :json)
end
