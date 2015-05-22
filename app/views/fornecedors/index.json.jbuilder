json.array!(@fornecedors) do |fornecedor|
  json.extract! fornecedor, :id, :nomefantasia, :razaosocial, :endereco, :bairro, :cep, :estado, :cidade, :tcomercial, :tcelular, :cnpj, :ie, :email, :im, :site, :categoria
  json.url fornecedor_url(fornecedor, format: :json)
end
