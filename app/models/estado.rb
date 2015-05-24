class Estado < ActiveRecord::Base
  has_many :cidades
  has_many :clientes, through: :cidades
  has_many :fornecedores, through: :cidades
end
