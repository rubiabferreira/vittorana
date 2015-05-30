class Cliente < ActiveRecord::Base
  belongs_to :estado
  belongs_to :cidade

  has_many :clientes
  # A semantica está estranha aqui.
  # Na verdade, cliente está em muitas
  # contas a receber da empresa.
  has_many :contas_a_receber
end
