class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.datetime :inicio
      t.datetime :fim
      t.boolean :cortesia
      t.decimal :consumacao
      t.integer :itens_avulsos
      t.integer :num_criancas
      t.integer :num_adultos
      t.integer :tema_id
      t.boolean :contrato
      t.string :documento
      t.decimal :entrada
      t.decimal :desconto
      t.string :forma_pagamento
      t.text :obs
      t.integer :cliente_id

      t.timestamps null: false
    end
  end
end
