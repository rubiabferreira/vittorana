class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :tipo
      t.string :observacao

      t.timestamps null: false
    end
  end
end
