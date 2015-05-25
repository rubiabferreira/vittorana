json.array!(@temas) do |tema|
  json.extract! tema, :id, :nome, :ob
  json.url tema_url(tema, format: :json)
end
