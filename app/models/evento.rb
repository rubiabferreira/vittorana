class Evento < ActiveRecord::Base
  belongs_to :tema
  belongs_to :cliente

  validates :cliente, :tema, presence: :true

end
