class CreateDependenteClientes < ActiveRecord::Migration
  def change
    create_table :dependente_clientes do |t|
      t.string :nome
      t.date :datanascimento

      t.timestamps null: false
    end
  end
end
