class CreateCustos < ActiveRecord::Migration[5.0]
  def change
    create_table :custos do |t|
      t.string :tipo
      t.text :descricao
      t.datetime :data
      t.float :valor

      t.timestamps
    end
  end
end
