class Evento < ActiveRecord::Base
  belongs_to :tema
  belongs_to :cliente
  belongs_to :tema

  validates :cliente, :tema, presence: :true

end
