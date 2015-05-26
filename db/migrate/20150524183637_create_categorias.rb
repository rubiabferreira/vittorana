class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :tipo, limit: 30
      t.string :observacao

      t.timestamps null: false
    end
  end
end
