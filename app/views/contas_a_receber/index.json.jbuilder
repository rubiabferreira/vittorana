json.array!(@contas_a_receber) do |conta_a_receber|
  json.extract! conta_a_receber, :id, :cliente_id, :vencimento, :valor
  json.url conta_a_receber_url(conta_a_receber, format: :json)
end
