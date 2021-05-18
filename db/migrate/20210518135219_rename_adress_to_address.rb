class RenameAdressToAddress < ActiveRecord::Migration[6.0]
  def change
    rename_column :offices, :adress, :address
  end
end
