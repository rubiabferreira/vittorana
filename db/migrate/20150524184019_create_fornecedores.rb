class CreateFornecedores < ActiveRecord::Migration
  def change
    create_table :fornecedores do |t|
      t.string :nomefantasia
      t.string :razaosocial
      t.string :endereco
      t.string :bairro
      t.string :cep
      t.integer :estado_id
      t.integer :cidade_id
      t.string :tcomercial
      t.string :tcelular
      t.string :cnpj
      t.string :ie
      t.string :email
      t.string :im
      t.string :site
      t.integer :categoria_id

      t.timestamps null: false
    end
  end
end
