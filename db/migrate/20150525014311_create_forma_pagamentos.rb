class CreateFormaPagamentos < ActiveRecord::Migration
  def change
    create_table :forma_pagamentos do |t|
      t.string :nome
      t.integer :qtdeparcelas

      t.timestamps null: false
    end
  end
end
