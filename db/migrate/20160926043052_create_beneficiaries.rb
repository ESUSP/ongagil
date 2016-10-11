class CreateBeneficiaries < ActiveRecord::Migration[5.0]
  def change
    create_table :beneficiaries do |t|
      t.string :projeto
      t.string :nome
      t.date :dataNasc
      t.string :estadoCivil
      t.string :rg
      t.string :cpf
      t.string :telefone
      t.string :endereco
      t.string :bairro
      t.string :estado
      t.string :pais
      t.string :cep
      t.boolean :menor
      t.string :responsavel

      t.timestamps
    end
  end
end
