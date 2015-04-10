class Cidade < ActiveRecord::Base
  belongs_to :estado
  belongs_to :cliente , through :cidades
end
