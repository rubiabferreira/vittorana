json.array!(@estados) do |estado|
  json.extract! estado, :id, :sigla, :nome, :capital
  json.url estado_url(estado, format: :json)
end