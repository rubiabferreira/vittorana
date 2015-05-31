class Evento < ActiveRecord::Base
  belongs_to :tema
  belongs_to :cliente
  belongs_to :tema

  validates :inicio, :fim, :cliente, :tema, presence: :true
end
