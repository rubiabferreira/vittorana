class Evento < ActiveRecord::Base
  belongs_to :tema
  belongs_to :cliente
end
