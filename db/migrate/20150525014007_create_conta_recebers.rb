class CreateContaRecebers < ActiveRecord::Migration
  def change
    create_table :conta_recebers do |t|
      t.integer :cliente
      t.integer :dependente
      t.string :tema
      t.boolean :evento
      t.date :dataEvento
      t.integer :qtdecriancas
      t.integer :qtdeadultos
      t.time :horarioFesta
      t.time :duracaoFesta
      t.string :itemavulso
      t.integer :diaSemana
      t.boolean :cortesia
      t.float :valorConsumacao
      t.float :valorfesta
      t.float :desconto
      t.float :entrada
      t.integer :formapagamento
      t.string :ndocumento
      t.string :obs

      t.timestamps null: false
    end
  end
end
