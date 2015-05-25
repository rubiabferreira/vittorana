class Fornecedor < ActiveRecord::Base
 belongs_to :estado
    belongs_to :cidade

end
