class CreateContasAReceber < ActiveRecord::Migration
  def change
    create_table :contas_a_receber do |t|
      t.integer :cliente_id
      t.date :vencimento
      t.decimal :valor, precision: 5, scale: 2

      t.timestamps null: false
    end
  end
end
