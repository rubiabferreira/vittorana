class ContaAReceber < ActiveRecord::Base
  belongs_to :cliente

  validates :cliente, :vencimento, :valor, presence: :true
end
