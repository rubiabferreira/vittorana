json.array!(@cidades) do |cidade|
  json.extract! cidade, :id, :nome
  json.url cidades_do_estado_url(cidade, format: :json)
end
