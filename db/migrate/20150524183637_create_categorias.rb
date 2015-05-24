class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :tipo
      t.string :observacao

      t.timestamps null: false
    end
  end
end
