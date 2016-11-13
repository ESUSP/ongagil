class AddUsuarioToOngs < ActiveRecord::Migration[5.0]
  def change
    add_reference :ongs, :usuario, foreign_key: true
  end
end
