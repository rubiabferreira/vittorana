json.array!(@categorias) do |categoria|
  json.extract! categoria, :id, :tipo, :observacao
  json.url categoria_url(categoria, format: :json)
end
