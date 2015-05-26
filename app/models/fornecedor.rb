class Fornecedor < ActiveRecord::Base
  belongs_to :estado
  belongs_to :cidade

  # Semântica inversa.
  # A empresa tem muitas contas_a_pagar
  # para o fornecedor
  has_many :contas_a_pagar
end
