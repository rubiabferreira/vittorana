class CreateFornecedores < ActiveRecord::Migration
  def change
    create_table :fornecedores do |t|
      t.string :nomefantasia, limit: 80
      t.string :razaosocial, limit: 80
      t.string :endereco, limit: 120
      t.string :bairro, limit: 30
      t.string :cep, limit: 10
      t.integer :estado_id
      t.integer :cidade_id
      t.string :tcomercial, limit: 25
      t.string :tcelular, limit: 25
      t.string :cnpj, limit: 18
      t.string :ie
      t.string :email, limit: 80
      t.string :im
      t.string :site, limit: 120
      t.integer :categoria_id

      t.timestamps null: false
    end
  end
end
