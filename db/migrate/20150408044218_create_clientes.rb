class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :conjuge
      t.string :endereco
      t.string :bairro
      t.string :cep
      t.string :email
      t.integer :estado_id
      t.integer :cidade_id
      t.string :tresidencial
      t.string :tcelular
      t.string :cpf
      t.string :rg
      t.boolean :evento
      t.time :horario_festa
      t.string :duracao_festa
      t.integer :dia_semana
      t.boolean :cortesia
      t.float :valor_consumacao
      t.integer :itens_avulsos
      t.date :data_evento
      t.integer :qtde_criancas
      t.integer :qtde_adultos
      t.integer :tema
      t.boolean :gerar_contrato
      t.float :valor
      t.string :num_documento
      t.float :desconto
      t.float :entrada
      t.string :forma_pagamento
      t.text :obs

      t.timestamps null: false
    end
  end
end
