class Evento < ActiveRecord::Base
  belongs_to :tema
  belongs_to :cliente
  belongs_to :tema

  validates :inicio, :fim, :cliente, :tema, presence: :true

  def valor_a_pagar
    self.entrada - self.desconto
  end
end
