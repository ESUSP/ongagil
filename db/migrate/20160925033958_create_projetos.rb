class CreateProjetos < ActiveRecord::Migration[5.0]
  def change
    create_table :projetos do |t|
      t.string :Status
      t.string :Projeto
      t.string :Tipo
      t.string :Area
      t.date :DataInicio
      t.date :DataFim
      t.integer :OngNumero
      t.integer :Ong
      t.integer :RespNumero
      t.string :RespNome
      t.string :DescricaoProjeto

      t.timestamps
    end
  end
end
