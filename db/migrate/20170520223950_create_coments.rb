class CreateComents < ActiveRecord::Migration
  def change
    create_table :coments do |t|
      t.string :email
      t.text :comentario

      t.timestamps null: false
    end
  end
end
