class AddNameToIngredients < ActiveRecord::Migration[5.0]
  def change
    remove_column :ingredients, :name
    add_column :ingredients, :name, :string
    add_index :ingredients, :name, unique: true
  end
end
