class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :email, limit: 254
      t.string :nome, limit: 254
      t.string :endereco, limit: 300
      t.string :telefone, limit: 30
      t.string :estado, limit: 2
      t.string :cidade, limit: 200
      t.boolean :ocultar
      t.timestamps
    end
    add_index :usuarios, :email
  end
end
