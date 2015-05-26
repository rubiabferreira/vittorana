class CreateContasAPagar < ActiveRecord::Migration
  def change
    create_table :contas_a_pagar do |t|
      t.integer :fornecedor_id
      t.date :vencimento
      t.decimal :valor, precision: 7, scale: 2

      t.timestamps null: false
    end
  end
end
