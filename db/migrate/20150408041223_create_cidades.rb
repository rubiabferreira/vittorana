class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.string :nome, limit: 30
      t.integer :estado_id

      t.timestamps null: false
    end
  end
end
