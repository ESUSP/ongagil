class CreateOngs < ActiveRecord::Migration[5.0]
  def change
    create_table :ongs do |t|
      t.string :nome
      t.string :endereco
      t.string :uf
      t.string :cidade
      t.string :telefone
      t.string :email
      t.string :site
      t.string :cnpj
      t.string :tipo

      t.timestamps
    end
  end
end
