json.array!(@conta_pagars) do |conta_pagar|
  json.extract! conta_pagar, :id, :fornecedor, :valor
  json.url conta_pagar_url(conta_pagar, format: :json)
end
