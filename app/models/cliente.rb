class Cliente < ActiveRecord::Base
    belongs_to :estado
    belongs_to :cidade
end

class Cliente < ActiveRecord::Base
validates_email_format :email
#validates :nome,  :tresidencial, :tcelular, presence: true
validates_uniqueness_of  :cpf, message: "já existente"
validates_presence_of :nome, :tresidencial, :tcelular, :cpf,   message: "deve ser preenchido"
end