class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :conjuge
      t.string :endereco
      t.string :bairro
      t.string :cep
      t.string :estado
      t.string :cidade
      t.string :tresidencial
      t.string :tcelular
      t.string :cpf
      t.string :rg
      t.string :email
      t.integer :dependente

      t.timestamps null: false
    end
  end
end
