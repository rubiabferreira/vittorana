json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :conjuge, :endereco, :bairro, :cep, :estado_id, :cidade_id, :tresidencial, :tcelular, :cpf, :rg, :evento, :horario_festa, :duracao_festa, :dia_semana, :cortesia, :valor_consumacao, :itens_avulsos, :data_evento, :qtde_criancas, :qtde_adultos, :tema, :gerar_contrato, :valor, :num_documento, :desconto, :entrada, :forma_pagamento, :obs
  json.url cliente_url(cliente, format: :json)
end
