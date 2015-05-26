json.array!(@temas) do |tema|
  json.extract! tema, :id, :nome, :obs
  json.url tema_url(tema, format: :json)
end
