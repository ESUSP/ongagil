class ChangeColumnNameUsuario < ActiveRecord::Migration[5.0]
  def change
  	rename_column :usuarios, :senha, :password_digest
  end
end
