json.array!(@conta_recebers) do |conta_receber|
  json.extract! conta_receber, :id, :cliente, :dependente, :tema, :evento, :dataEvento, :qtdecriancas, :qtdeadultos, :horarioFesta, :duracaoFesta, :itemavulso, :diaSemana, :cortesia, :valorConsumacao, :valorfesta, :desconto, :entrada, :formapagamento, :ndocumento, :obs
  json.url conta_receber_url(conta_receber, format: :json)
end
