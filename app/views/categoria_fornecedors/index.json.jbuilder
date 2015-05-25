json.array!(@categoria_fornecedors) do |categoria_fornecedor|
  json.extract! categoria_fornecedor, :id, :tipo, :obs
  json.url categoria_fornecedor_url(categoria_fornecedor, format: :json)
end
