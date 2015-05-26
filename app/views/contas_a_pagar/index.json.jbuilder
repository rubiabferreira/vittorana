json.array!(@contas_a_pagar) do |conta_a_pagar|
  json.extract! conta_a_pagar, :id, :fornecedor_id, :vencimento, :valor
  json.url conta_a_pagar_url(conta_a_pagar, format: :json)
end
