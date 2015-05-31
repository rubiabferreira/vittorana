class Fornecedor < ActiveRecord::Base
  belongs_to :estado
  belongs_to :cidade
  belongs_to :categoria
  has_many :contas_a_pagar
end
