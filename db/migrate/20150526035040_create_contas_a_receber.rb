class CreateContasAReceber < ActiveRecord::Migration
  def change
    create_table :contas_a_receber do |t|
      t.integer :cliente_id
      t.date :vencimento
      t.double :valor

      t.timestamps null: false
    end
  end
end
