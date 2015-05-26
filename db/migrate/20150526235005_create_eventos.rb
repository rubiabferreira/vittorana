class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.datetime :inicio
      t.datetime :fim
      t.boolean :cortesia
      t.decimal :consumacao, precision: 5, scale: 2
      t.integer :itens_avulsos
      t.integer :num_criancas
      t.integer :num_adultos
      t.integer :tema_id
      t.boolean :contrato
      t.string :documento, limit: 80
      t.decimal :entrada, precision: 5, scale: 2
      t.decimal :desconto, precision: 5, scale: 2
      t.string :forma_pagamento, limit: 20
      t.text :obs
      t.integer :cliente_id

      t.timestamps null: false
    end
  end
end
