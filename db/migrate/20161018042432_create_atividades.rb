class CreateAtividades < ActiveRecord::Migration[5.0]
  def change
    create_table :atividades do |t|
      t.string :atividade
      t.string :situacao
      t.string :projeto
      t.integer :projetoid
      t.string :atuacao
      t.decimal :custo
      t.date :datainicio
      t.date :datefim
      t.decimal :cargahoras
      t.integer :responsavelid
      t.string :responsavelnome
      t.text :decricao

      t.timestamps
    end
  end
end
