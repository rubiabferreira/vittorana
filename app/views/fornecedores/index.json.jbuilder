json.array!(@fornecedores) do |fornecedor|
  json.extract! fornecedor, :id, :nomefantasia, :razaosocial, :endereco, :bairro, :cep, :estado_id, :cidade_id, :tcomercial, :tcelular, :cnpj, :ie, :email, :im, :site, :categoria_id
  json.url fornecedor_url(fornecedor, format: :json)
end
