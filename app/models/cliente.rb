class Cliente < ActiveRecord::Base
  belongs_to :estado
  belongs_to :cidade

  has_many :eventos, dependent: :destroy
  has_many :contas_a_receber

  validates :nome, :estado, :cidade, presence: :true

end
