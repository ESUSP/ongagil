class CreateRecebimentos < ActiveRecord::Migration[5.0]
  def change
    create_table :recebimentos do |t|
      t.string :tipoRecebimento
      t.date :dataRecebimento
      t.string :local
      t.string :unidade
      t.string :projeto
      t.string :responsavel
      t.string :beneficiarios

      t.timestamps
    end
  end
end
