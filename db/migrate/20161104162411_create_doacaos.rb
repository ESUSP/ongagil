class CreateDoacaos < ActiveRecord::Migration[5.0]
  def change
    create_table :doacaos do |t|
      t.date :data
      t.references :doador, foreign_key: true
      t.string :tipo
      t.float :valor
      t.string :pago
      t.string :forma
      t.text :descricao
      t.text :observacao

      t.timestamps
    end
  end
end
