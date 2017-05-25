class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :email
      t.text :descricao

      t.timestamps null: false
    end
  end
end
