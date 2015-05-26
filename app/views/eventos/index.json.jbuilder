json.array!(@eventos) do |evento|
  json.extract! evento, :id, :inicio, :fim, :cortesia, :consumacao, :itens_avulsos, :num_criancas, :num_adultos, :tema_id, :contrato, :documento, :entrada, :desconto, :forma_pagamento, :obs, :cliente_id
  json.url evento_url(evento, format: :json)
end
