class ContaAReceber < ActiveRecord::Base
  belongs_to :cliente

  validades :cliente, :vencimento, :valor, presence: :true
end
