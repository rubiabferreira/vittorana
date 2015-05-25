class CreateContaPagars < ActiveRecord::Migration
  def change
    create_table :conta_pagars do |t|
      t.integer :fornecedor
      t.float :valor

      t.timestamps null: false
    end
  end
end
