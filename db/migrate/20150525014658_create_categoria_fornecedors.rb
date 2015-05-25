class CreateCategoriaFornecedors < ActiveRecord::Migration
  def change
    create_table :categoria_fornecedors do |t|
      t.string :tipo
      t.string :obs

      t.timestamps null: false
    end
  end
end
