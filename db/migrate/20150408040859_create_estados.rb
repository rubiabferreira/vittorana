class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.string :sigla
      t.string :nome
      t.string :capital

      t.timestamps null: false
    end
  end
end
