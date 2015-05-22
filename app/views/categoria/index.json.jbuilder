json.array!(@categoria) do |categorium|
  json.extract! categorium, :id, :tipo, :observacao
  json.url categorium_url(categorium, format: :json)
end
