class CreateTemas < ActiveRecord::Migration
  def change
    create_table :temas do |t|
      t.string :nome
      t.string :ob

      t.timestamps null: false
    end
  end
end
