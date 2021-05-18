class AddTitleToOffices < ActiveRecord::Migration[6.0]
  def change
    add_column :offices, :title, :string
  end
end
