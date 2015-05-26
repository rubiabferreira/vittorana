class Categoria < ActiveRecord::Base
  has_many :fornecedores
end
