class Estado < ActiveRecord::Base
  has_many :cidades
  belongs_to :cliente, through :cidades
end
