class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome, limit: 80
      t.string :conjuge, limit: 80
      t.string :endereco, limit: 120
      t.string :bairro, limit: 30
      t.string :cep, limit: 10
      t.integer :estado_id
      t.integer :cidade_id
      t.string :tresidencial, limit: 25
      t.string :tcelular, limit: 25
      t.string :cpf, limit: 14
      t.string :rg, limit: 14
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
