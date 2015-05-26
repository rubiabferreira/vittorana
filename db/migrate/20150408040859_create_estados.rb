class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.string :sigla, limit: 2
      t.string :nome, limit: 25
      t.string :capital, limit: 30

      t.timestamps null: false
    end
  end
end
