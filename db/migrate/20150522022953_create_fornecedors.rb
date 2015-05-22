class CreateFornecedors < ActiveRecord::Migration
  def change
    create_table :fornecedors do |t|
      t.string :nomefantasia
      t.string :razaosocial
      t.string :endereco
      t.string :bairro
      t.string :cep
      t.string :estado
      t.string :cidade
      t.string :tcomercial
      t.string :tcelular
      t.string :cnpj
      t.string :ie
      t.string :email
      t.string :im
      t.string :site
      t.string :categoria

      t.timestamps null: false
    end
  end
end
