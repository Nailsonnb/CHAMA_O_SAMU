class CreateComents < ActiveRecord::Migration
  def change
    create_table :coments do |t|
      t.string :email
      t.text :descricao

      t.timestamps null: false
    end
  end
end
