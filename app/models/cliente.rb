class Cliente < ActiveRecord::Base
  belongs_to :estado
  belongs_to :cidade
end
