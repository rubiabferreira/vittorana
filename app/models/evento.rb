class Evento < ActiveRecord::Base
  belongs_to :tema
  belongs_to :cliente
  belongs_to :tema

  validates :inicio, :fim, :cliente, :tema, presence: :true

  def valor_a_pagar
    self.entrada - self.desconto
  end
end

def print_strftime_formats(a,cur_date)
    a.each do |format|
        b = "%#{format}"
        output = cur_date.strftime(b)
        puts "t.strftime('#{b}'), => #{output}"
    end
end

a = ('a'..'z').to_a
A = ('A'..'Z').to_a

cur_date = Time.now