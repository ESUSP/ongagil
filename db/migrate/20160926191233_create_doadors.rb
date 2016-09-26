class CreateDoadors < ActiveRecord::Migration[5.0]
  def change
    create_table :doadors do |t|
      t.string :nome
      t.text :endereco
      t.integer :telefone
      t.string :frequencia
      t.string :forma
      t.date :data

      t.timestamps
    end
  end
end
